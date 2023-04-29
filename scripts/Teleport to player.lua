--[[
    Creator(s): WeAreDevs
    Source: https://wearedevs.net/scripts/d/6109a5a4a11f86fa3a1ffb90/Teleport%20To%20Player
    Statuses:
        - [2023-04-22]
        	- Working | I2rys#0663 | Sirhurt
        - [2023-04-25]
            - Working | I2rys#0663 | Private Exploit (Uses WrdAPI)
]]

targetUsername = ""

players = game:GetService("Players")
targetPlayer = players:FindFirstChild(targetUsername)
players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)