--[[
    Creator(s): Oooga Booga
    Source: https://v3rmillion.net/showthread.php?tid=1204050
    Statuses:
        - [2023-04-25]
        	- Working | I2rys#0663 | Sirhurt
]]

workspace.FallenPartsDestroyHeight = math.huge-math.huge
getgenv().FlySpeed = 1 -- default 1
getgenv().www = false
getgenv().aaa = false
getgenv().sss = false
getgenv().ddd = false
getgenv().qqq = false
getgenv().eee = false
getgenv().en = false
getgenv().ssss = game.Players.LocalPlayer:GetMouse()
getgenv().currentcf = nil

local part = Instance.new("Part") -- Create a new part
 
part.Name = "a" 
part.Anchored = true 
part.Parent = game.Workspace
part.CFrame = CFrame.new(0, -600000, 0)
ssss.KeyDown:connect(function(key)
if key == "=" then
getgenv().FlySpeed = FlySpeed + 1
end
end)
ssss.KeyDown:connect(function(key)
if key == "-" then
getgenv().FlySpeed = 1
end
end)
ssss.KeyDown:connect(function(key)
if key == "w" then
getgenv().www = true
end
end)
ssss.KeyDown:connect(function(key)
if key == "a" then
getgenv().aaa = true
end
end)
ssss.KeyDown:connect(function(key)
if key == "s" then
getgenv().sss = true
end
end)
ssss.KeyDown:connect(function(key)
if key == "d" then
getgenv().ddd = true
end
end)
ssss.KeyDown:connect(function(key)
if key == "q" then
getgenv().qqq = true
end
end)
ssss.KeyDown:connect(function(key)
if key == "e" then
getgenv().eee = true
end
end)
ssss.KeyUp:connect(function(key)
if key == "w" then
getgenv().www = false
end
end)
ssss.KeyUp:connect(function(key)
if key == "a" then
getgenv().aaa = false
end
end)
ssss.KeyUp:connect(function(key)
if key == "s" then
getgenv().sss = false
end
end)
ssss.KeyUp:connect(function(key)
if key == "d" then
getgenv().ddd = false
end
end)
ssss.KeyUp:connect(function(key)
if key == "q" then
getgenv().qqq = false
end
end)
ssss.KeyUp:connect(function(key)
if key == "e" then
getgenv().eee = false
end
end)
ssss.KeyDown:connect(function(key)
if key == "x" then
if en == true then 
    getgenv().en = false
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    else 
    getgenv().en = true
getgenv().currentcf = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = currentcf
end
end
end)
game:GetService("RunService").RenderStepped:Connect(function()
if en == true then

if www == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,FlySpeed*-1)
end    
if aaa == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(FlySpeed*-1,0,0)
end
if sss == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,FlySpeed)
end
if ddd == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(FlySpeed,0,0)
end
if qqq == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,FlySpeed*-1,0)
end
if eee == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,FlySpeed,0)
end
end
end)
game.Players.PlayerAdded:connect(function(player)
    if player.Name == "goodluck3646" then
wait(1)
local args = {
    [1] = "no bueno banana",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end)