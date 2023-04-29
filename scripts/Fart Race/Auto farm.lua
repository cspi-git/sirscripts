--[[
    Creator(s): fedo#8608
    Statuses:
        - [2023-04-27]
        	- Working | I2rys#0663 | Sirhurt
]]

_G.tp = true
_G.collect = true

while wait() do
    if not _G.tp then
        break
    end
    local place = game:GetService("Workspace").Scenes.BasicScene.RaceWall:FindFirstChild("Detector")
    if place then
        local ply = game.Players.LocalPlayer.Character.HumanoidRootPart
        ply.CFrame = place.CFrame
    end
end
local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart
while wait() do
    if not _G.collect then
        break
    end
    for i, v in pairs(game:GetService("Workspace").Scenes.BasicScene.CollectionArea:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(playerHead, v.Parent, 0)
            wait(0.1)
        end
    end
end