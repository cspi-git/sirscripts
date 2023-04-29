--[[
    Creator(s): Upbolt
    Source: https://github.com/Upbolt/Hydroxide
    Statuses:
        - [2023-04-25]
        	- Working | I2rys#0663 | Sirhurt
]]

local owner = "Upbolt"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")