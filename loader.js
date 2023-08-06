"use strict";

process.env.NODE_NO_WARNINGS = "1";

// Dependencies
const path = require("path")
const fs = require("fs")

// Variables
const excluded = ["_archive", "_libraries", "test.lua"]

//  Functions
function getLuaFiles(dirPath){
	const files = []
	
	function readDirR(dirPath){
 		const entries = fs.readdirSync(dirPath, { withFileTypes: true })
		
        entries.map((entry)=>{
            const fullPath = path.join(dirPath, entry.name)

			if(entry.isDirectory()){
				readDirR(fullPath)
			}else if(path.extname(fullPath) === ".lua" && !excluded.includes(fullPath.split("\\")[1])){
				files.push(fullPath)
			}
        })
	}
	
	readDirR(dirPath)
	
	return files
}

// Main

const results = []
const files = getLuaFiles("./scripts")

for( const f of files ){
    const read = fs.readFileSync(f, "utf8")
    try{
		var data = JSON.parse(read.slice(4, read.indexOf("]]"), { logLevel: "error" }))
		data.fileSource = f.replace(/\\/g, "/")

        results.push(data)
    }catch(err){
		console.log(`Couldn't parse ${f}`)
    }
}
// console.log(yaml.parse(b.slice(4, b.indexOf("]]")-1)))
fs.writeFileSync("./database.json", JSON.stringify(results, null, 2), "utf8")

process.on("warning", ()=>{return})
process.on("uncaughtExceptionMonitor", ()=>{return})