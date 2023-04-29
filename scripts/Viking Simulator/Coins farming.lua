--[[
    Creator(s): Altorx#6903
    Statuses:
        - [2023-04-26]
            - Working | I2rys#0663 | Sirhurt
            - Working | Altorx#6903 | Synapse X (V2)
]]

local plr = game.Players.LocalPlayer
local hum = plr.Character.HumanoidRootPart

local folder = game:GetService("Workspace").Coins

for i,v in pairs(folder:GetChildren()) do
    hum.CFrame = CFrame.new(v.Position)
    
print("You got: ", v.Name)
    wait(0.1)
end