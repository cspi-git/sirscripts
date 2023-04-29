--[[
    Creator(s): WeAreDevs
    Source: https://wearedevs.net/scripts/d/61081d0bfd8901d6c92747a2/BTools
    Statuses:
        - [2023-04-22]
        	- Working | I2rys#0663 | Sirhurt
]]

backpack = game:GetService("Players").LocalPlayer.Backpack

hammer = Instance.new("HopperBin")
hammer.Name = "Hammer"
hammer.BinType = 4
hammer.Parent = backpack

cloneTool = Instance.new("HopperBin")
cloneTool.Name = "Clone"
cloneTool.BinType = 3
cloneTool.Parent = backpack

grabTool = Instance.new("HopperBin")
grabTool.Name = "Grab"
grabTool.BinType = 2
grabTool.Parent = backpack