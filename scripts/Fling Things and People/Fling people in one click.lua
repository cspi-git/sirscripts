--[[
    Creator(s): Mathematician
    Source: https://v3rmillion.net/showthread.php?tid=1135411&highlight=Fling+things
    Statuses:
        - [2023-04-22]
            - Working | I2rys#0663 | Sirhurt
]]

game:GetService("RunService").Stepped:connect(function()
    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
    game:GetService("Players").LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
    wait()
end)
    
for _,part in pairs(game:GetService("Workspace"):GetDescendants()) do
    if part.Parent ~= game.Players.LocalPlayer.Character then
        local ForceInstance = Instance.new("BodyThrust")

        for i,c in pairs(part:GetChildren()) do
            if c:IsA("BodyPosition") or c:IsA("BodyThrust") then c:Destroy() end
        end
        ForceInstance.Parent = part
        ForceInstance.Force = Vector3.new(100, 100, 11)
        ForceInstance.Location = Vector3.new(1000, 110, 0)
    end
end