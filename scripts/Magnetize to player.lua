--[[
    Creator(s): WeAreDevs
    Source: https://wearedevs.net/scripts/d/6108383db5ba5eb625c37738/Magnetize%20To%20Player
    Statuses:
        - [2023-04-22]
            - Working | I2rys#0663 | Sirhurt
        - [2023-04-25]
            - Working | I2rys#0663 | Private Exploit (Uses WrdAPI)
]]

_G.MagnetizeToTarget = ""

game:GetService('RunService').Stepped:connect(function()
   for i,v in pairs (game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if v:IsA("BasePart") then 
            v.CanCollide = false
        end
   end
end)

b = Instance.new("RocketPropulsion")
b.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
b.Target = game:GetService("Players"):FindFirstChild(_G.MagnetizeToTarget).Character.HumanoidRootPart
b.TurnP = 20000
b.MaxThrust = 20000
b.MaxSpeed = 1000
b.ThrustP = 13000
b:Fire()