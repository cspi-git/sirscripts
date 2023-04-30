"use strict";

// Dependencies
const compression = require("compression")
const serveIndex = require("serve-index")
const express = require("express")
const path = require("path")
const fs = require("fs")

// Variables
const web = express()
const port = process.env.PORT || 8080

function getLuaFiles(dirPath){
	const files = []
	
	function readDirR(dirPath){
 		const entries = fs.readdirSync(dirPath, { withFileTypes: true })
		
        entries.map((entry)=>{
            const fullPath = path.join(dirPath, entry.name)
            console.log(fullPath)

			if(entry.isDirectory()){
				readDirR(fullPath)
			}else if(path.extname(fullPath) === ".lua"){
				files.push(fullPath)
			}
        })
	}
	
	readDirR(dirPath)
	
	return files
}

/// Configurations
// Express
web.use(compression({ chunkSize: 65536 }))
web.use(express.static(path.join(__dirname, "public")))
web.use("/scripts", express.static(path.join(__dirname, "scripts")), serveIndex(path.join(__dirname, "scripts"), { stylesheet: path.join(__dirname, "custom.css"), icons: true }))

// Main
web.use("", (req, res, next)=>{
	if(req.path.match(".html")) return res.redirect("/")

	next()
})

web.use("/status", async(req, res)=>{
	return res.json({
		status: "success",
		data: {
			scriptsCount: getLuaFiles(path.join(__dirname, "scripts")).length
		}
	})
})

web.use("*", (req, res)=>res.redirect("/"))
web.listen(port, ()=>console.log(`Server is running. Port: ${port}`))