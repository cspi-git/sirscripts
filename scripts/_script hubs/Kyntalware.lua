--[[
    Creator(s): penguin
    Statuses:
        - [2023-04-26]
        	- Working | I2rys#0663 | Sirhurt
]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "KynTal Ware", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Hubs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
ScriptsTab:AddButton({
	Name = "Vynixius Doors",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
      		print("Running Vynixius Doors")
  	end    
})
OrionLib:MakeNotification({
	Name = ":)",
	Content = "KynTal Ware Booting",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local OthersTab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
OthersTab:AddParagraph("!WARNING!","Does not work in every game high chance of getting banned on certain games")
ScriptsTab:AddParagraph("Scripts","Mostly individual scripts")
Tab:AddParagraph("Hubs","Mostly individual Hubs")
OthersTab:AddButton({
	Name = "Inf Yeild!",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
      		print("Inf Yeild")
  	end    
})
ScriptsTab:AddButton({
	Name = "Entity Spawner Plamen",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/DoorsEntitySummonerGUI/main/EntityGUI'))()      		print("Running Vynixius Doors")
  	end    
})
ScriptsTab:AddButton({
	Name = "NYC",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/imvipp/roblox/main/shitware/nyc_theprojects/main.lua'))()
  	end    
})
Tab:AddButton({
	Name = "The Spinner Hack",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/LOLking123456/Spinner/main/Roblox9021'))()
  	end    
})
local PlsSection = ScriptsTab:AddSection({
	Name = "Pls Donate"
})
PlsSection:AddButton({
	Name = "script",
	Callback = function()
		loadstring(game:HttpGet("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/2d722888a388017c18028cd434c43a25/raw/dcccf1027fe4b90780e47767aaf584389c9d7771/EULma3fU90PUOKUn?identifier=".. (function()local a=""for b=1,256 do local c=math.random(1,3)a=a..string.char(c==1 and math.random(48,57)or c==2 and math.random(97,122)or c==3 and math.random(65,90))end;return a end)()))()
      		print("script")
  	end    
})
PlsSection:AddButton({
	Name = "pls dono casion script",
	Callback = function()
		getgenv().settin = {
			['WebHook'] = {
				['Webhook'] = "",
			},
			['ServerHopDelay'] = 15, -- minutes, resets every donation
			['MinimumWithdrawAmount'] = 1000, -- fake withdraw amount
			['Beg'] = {
				['Delay'] = 120,
				['Messages'] = {
					'ðŸ’Ž WIN BOBUX HERE ðŸ’Ž',
					'ðŸ’Ž EARN BY PLAYING ðŸ’Ž',
					'ðŸ’Ž TIRED OF NO DONATIONS? PLAY OUR GAME ðŸ’Ž'
				}
			}
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/tzechco-PlsDonateAutofarmBackup/main/casino.lua"))()
      		print("running")
  	end    
})
PlsSection:AddButton({
	Name = "Pls dono jump script",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/tzechco-PlsDonateAutofarmBackup/main/autofarm"))()
      		print("running")
  	end    
})
local DoorsSection = ScriptsTab:AddSection({
	Name = "Doors"
})
Tab:AddButton({
	Name = "VG Hub 110+ Games",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
      		print("Running VG Hub")
  	end    
})
Tab:AddButton({
	Name = "VG Hub 110+ Games",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
      		print("Running VG Hub")
  	end    
})
ScriptsTab:AddButton({
	Name = "Plushie",
	Callback = function()
		local shadow=game:GetObjects("rbxassetid://8069174048")[1]
		shadow.Parent = game.Players.LocalPlayer.Backpack
		local Players = game:GetService("Players")
		local Plr = Players.LocalPlayer
		local Char = Plr.Character or Plr.CharacterAdded:Wait()
		local Hum = Char:WaitForChild("Humanoid")
		local RightArm = Char:WaitForChild("RightUpperArm")
		local LeftArm = Char:WaitForChild("LeftUpperArm")
		local RightC1 = RightArm.RightShoulder.C1
		local LeftC1 = LeftArm.LeftShoulder.C1
				local function setupCrucifix(tool)
				RightArm.Name = "R_Arm"
				LeftArm.Name = "L_Arm"
 
				RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
				LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
				for v in next, Hum:GetPlayingAnimationTracks() do
					v:Stop()
				end
				end
		shadow.Equipped:Connect(function()
		setupCrucifix(shadow)
		game.Players.LocalPlayer:SetAttribute("Hidden", true)
		end)
 
		shadow.Unequipped:Connect(function()
			game.Players.LocalPlayer:SetAttribute("Hidden", false)
				RightArm.Name = "RightUpperArm"
				LeftArm.Name = "LeftUpperArm"
 
				RightArm.RightShoulder.C1 = RightC1
				LeftArm.LeftShoulder.C1 = LeftC1
		end)
      		print("Running")
  	end    
})
ScriptsTab:AddButton({
	Name = "figure cruxfix",
	Callback = function()
		local function IsVisible(part)
			local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
			local onscreen = found and vec.Z > 0
			local cfg = RaycastParams.new()
			cfg.FilterType = Enum.RaycastFilterType.Blacklist
			cfg.FilterDescendantsInstances = {part}
 
			local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg)
			if onscreen then
				if cast and (cast and cast.Instance).Parent==game.Players.LocalPlayer.Character then
					return true
				end
			end
		end
 
		local Equipped = false
 
		-- Edit this --
		getgenv().spawnKey = Enum.KeyCode.F4
		---------------
 
		-- Services
 
		local Players = game:GetService("Players")
		local UIS = game:GetService("UserInputService")
 
		-- Variables
 
		local Plr = Players.LocalPlayer
		local Char = Plr.Character or Plr.CharacterAdded:Wait()
		local Hum = Char:WaitForChild("Humanoid")
		local Root = Char:WaitForChild("HumanoidRootPart")
		local RightArm = Char:WaitForChild("RightUpperArm")
		local LeftArm = Char:WaitForChild("LeftUpperArm")
 
		local RightC1 = RightArm.RightShoulder.C1
		local LeftC1 = LeftArm.LeftShoulder.C1
 
		local SelfModules = {
			Functions = loadstring(
				game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua")
			)(),
			CustomShop = loadstring(
				game:HttpGet(
					"https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"
				)
			)(),
		}
 
		local ModuleScripts = {
			MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
			SeekIntro = require(Plr.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Cutscenes.SeekIntro),
		}
 
		-- Functions
 
		local function setupCrucifix(tool)
			tool.Equipped:Connect(function()
				Equipped = true
				Char:SetAttribute("Hiding", true)
				for _, v in next, Hum:GetPlayingAnimationTracks() do
					v:Stop()
				end
 
				RightArm.Name = "R_Arm"
				LeftArm.Name = "L_Arm"
 
				RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
				LeftArm.LeftShoulder.C1 = LeftC1
					* CFrame.new(-0.2, -0.3, -0.5)
					* CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
			end)
 
			tool.Unequipped:Connect(function()
				Equipped = false
				Char:SetAttribute("Hiding", nil)
				RightArm.Name = "RightUpperArm"
				LeftArm.Name = "LeftUpperArm"
 
				RightArm.RightShoulder.C1 = RightC1
				LeftArm.LeftShoulder.C1 = LeftC1
			end)
		end
 
		-- Scripts
 
		local CrucifixTool = game:GetObjects("rbxassetid://11840788525")[1]
		CrucifixTool.Name = "Crucifix"
		CrucifixTool.Parent = game.Players.LocalPlayer.Backpack
 
		-- game.UserInputService.InputBegan:Connect(function(input, proc)
		--     if proc then return end
 
		--     if input.KeyCode == input.KeyCode[getgenv().spawnKey] then
		--         local CrucifixTool = game:GetObjects("rbxassetid://11746137630")[1]
		--         CrucifixTool.Name = "Crucifix"
		--         CrucifixTool.Parent = game.Players.LocalPlayer.Backpack
		--     end
		-- end)
		-- Input handler
 
		setupCrucifix(CrucifixTool)
 
		local Players = game:GetService("Players")
		local UIS = game:GetService("UserInputService")
 
		-- Variables
 
		local Plr = Players.LocalPlayer
		local Char = Plr.Character or Plr.CharacterAdded:Wait()
		local Hum = Char:WaitForChild("Humanoid")
		local Root = Char:WaitForChild("HumanoidRootPart")
 
		local dupeCrucifix = Instance.new("BindableEvent")
		local function func(ins)
			wait(.01) -- Wait for the attribute
			if ins:GetAttribute("IsCustomEntity")==true and ins:GetAttribute("ClonedByCrucifix")~=true then
				local Chains = game:GetObjects("rbxassetid://11793072657")[1]
				Chains.Parent = workspace
				local chained = true
				local posTime = false
				local rotTime = false
				local tweenTime = false
				local intFound = true
 
				game:GetService("RunService").RenderStepped:Connect(function()
					if Equipped then
						if ins.Parent~=nil and ins.PrimaryPart and IsVisible(ins.PrimaryPart) and (Root.Position-ins.PrimaryPart.Position).magnitude <= 25 then
							local c=ins:Clone()
							c:SetAttribute("ClonedByCrucifix", true)
							c.RushNew.Anchored=true
							c.Parent=ins.Parent
							ins:Destroy()
							dupeCrucifix:Fire(6,c.RushNew)
 
 
 
							-- Chains.PrimaryPart.Orientation = Chains.PrimaryPart.Orientation + Vector3.new(0, 3, 0)
 
							local EntityRoot = c:FindFirstChild("RushNew")
 
							if EntityRoot then
 
 
 
								local Fake_FaceAttach = Instance.new("Attachment")
								Fake_FaceAttach.Parent = EntityRoot
 
 
								for i, beam in pairs(Chains:GetDescendants()) do
									if beam:IsA("BasePart") then
										beam.CanCollide = false
									end
									if beam.Name == "Beam" then
										beam.Attachment1 = Fake_FaceAttach
									end
								end
 
								if not posTime then
									Chains:SetPrimaryPartCFrame(
										EntityRoot.CFrame * CFrame.new(0, -3.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
									)
									posTime = true
								end
 
								task.wait(1.35)
								if not tweenTime then
 
									task.spawn(function()
										while task.wait() do
											if Chains:FindFirstChild('Base') then
												Chains.Base.CFrame = Chains.Base.CFrame * CFrame.Angles(0,0 , math.rad(0.5))
											end
										end
									end)
 
									task.spawn(function()
										while task.wait() do
											for i, beam in pairs(Chains:GetDescendants()) do
												if beam.Name == "Beam" then
													beam.TextureLength = beam.TextureLength+0.035
												end
											end
										end
									end)
 
 
									game.TweenService
										:Create(
											EntityRoot,
											TweenInfo.new(6),
											{ CFrame = EntityRoot.CFrame * CFrame.new(0, 50, 0) }
										)
										:Play()
 
 
									tweenTime = true
									task.wait(1.5)
									intFound = false
									game:GetService("Debris"):AddItem(c, 0)
									game:GetService("Debris"):AddItem(Chains, 0)
								end
							end
						end
					end
				end)
			elseif ins.Name=="Lookman" then
				local c=ins
				task.spawn(function()
					repeat task.wait() until IsVisible(c.Core) and Equipped and c.Core.Attachment.Eyes.Enabled==true
					local pos=c.Core.Position
					dupeCrucifix:Fire(18.364, c.Core)
					task.spawn(function()
						c:SetAttribute("Killing", true)
						ModuleScripts.MainGame.camShaker:ShakeOnce(10, 10, 5, 0.15)
						wait(5)
						c.Core.Initiate:Stop()
						for i=1,3 do
							c.Core.Repent:Play()  
							c.Core.Attachment.Angry.Enabled=true
							ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, 1.3, 0.15)
							delay(c.Core.Repent.TimeLength, function() c.Core.Attachment.Angry.Enabled=false end)
							wait(4)
						end
						c.Core.Scream:Play();
						ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, c.Core.Scream.TimeLength, 0.15);
						(c.Core:FindFirstChild"whisper" or c.Core:FindFirstChild"Ambience"):Stop()
						for _, l in pairs(c:GetDescendants()) do
							if l:IsA("PointLight") then
								l.Enabled=false
							end
						end
						game:GetService("TweenService"):Create(c.Core, TweenInfo.new(c.Core.Scream.TimeLength, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
							CFrame=CFrame.new(c.Core.CFrame.X, c.Core.CFrame.Y-12, c.Core.CFrame.Z)
						}):Play()
					end)
					local col=game.Players.LocalPlayer.Character.Collision
 
					local function CFrameToOrientation(cf)
						local x, y, z = cf:ToOrientation()
						return Vector3.new(math.deg(x), math.deg(y), math.deg(z))
					end
 
					while c.Parent~=nil and c.Core.Attachment.Eyes.Enabled==true do
						-- who's the boss now huh?
						col.Orientation = CFrameToOrientation(CFrame.lookAt(col.Position, pos)*CFrame.Angles(0, math.pi, 0))
						task.wait()
					end
				end)
			elseif ins.Name=="Shade" and ins.Parent==workspace.CurrentCamera and ins:GetAttribute("ClonedByCrucifix")==nil then
				task.spawn(function()
					repeat task.wait() until IsVisible(ins) and (Root.Position-ins.Position).Magnitude <= 12.5 and Equipped
 
					local clone = ins:Clone()
 
					clone.CFrame = ins.CFrame
					clone.Parent = ins.Parent
					clone.Anchored = true
 
					ins:Remove()
 
					dupeCrucifix:Fire(13, ins)
					ModuleScripts.MainGame.camShaker:ShakeOnce(40, 10, 5, 0.15)
 
 
 
					for _, thing in pairs(clone:GetDescendants()) do
						if thing:IsA("SpotLight") then
							game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
								Brightness=thing.Brightness*5
							}):Play()
						elseif thing:IsA("Sound") and thing.Name~="Burst" then
							game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
								Volume=0
							}):Play()
						elseif thing:IsA("TouchTransmitter") then thing:Destroy() end
					end
 
					for _, pc in pairs(clone:GetDescendants()) do
						if pc:IsA("ParticleEmitter") then
								pc.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.48, Color3.fromRGB(182, 0, 3)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
						end
					end
 
					local Original_color = {}
 
					local light
					light = game.Lighting["Ambience_Shade"]
					game:GetService("TweenService"):Create(light, TweenInfo.new(1), {
 
 
					}):Play()
 
					wait(5)
 
					clone.Burst.PlaybackSpeed=0.5
					clone.Burst:Stop()
					clone.Burst:Play()
					light.TintColor = Color3.fromRGB(215,253,255)
					game:GetService("TweenService"):Create(clone, TweenInfo.new(6), {
						CFrame=CFrame.new(clone.CFrame.X, clone.CFrame.Y-12, clone.CFrame.Z)
					}):Play()
					wait(8.2)
 
					game:GetService("Debris"):AddItem(clone, 0)
					game.ReplicatedStorage.Bricks.ShadeResult:FireServer()
				end)
			end
		end
 
		workspace.ChildAdded:Connect(func)
		workspace.CurrentCamera.ChildAdded:Connect(func)
		for _, thing in pairs(workspace:GetChildren()) do
			func(thing)
		end
		dupeCrucifix.Event:Connect(function(time, entityRoot)
			local Cross = game:GetObjects("rbxassetid://11746137630")[1]
			Cross.Parent = workspace
 
			local fakeCross = Cross.Handle
 
			-- fakeCross:FindFirstChild("EffectLight").Enabled = true
 
			ModuleScripts.MainGame.camShaker:ShakeOnce(35, 25, 0.15, 0.15)
			-- you tell me i didnt make?
			fakeCross.CFrame = CFrame.lookAt(CrucifixTool.Handle.Position, entityRoot.Position)
 
			-- hl.Parent = model
			-- hl.FillTransparency = 1
			-- hl.OutlineColor = Color3.fromRGB(75, 177, 255)
			fakeCross.Anchored = true
 
			CrucifixTool:Destroy()
 
			-- for i, v in pairs(fakeCross:GetChildren()) do
			--     if v.Name == "E" and v:IsA("BasePart") then
			--         v.Transparency = 0
			--         v.CanCollide = false
			--     end
			--     if v:IsA("Motor6D") then
			--         v.Name = "Motor6D"
			--     end
			-- end
 
			task.wait(time)
			fakeCross.Anchored = false
			fakeCross.CanCollide = true
			task.wait(0.5)
			Cross:Remove()
		end)
 
		-- credits
		firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "fire made by penguin")
      		print("Running")
  	end    
})
ScriptsTab:AddButton({
	Name = "every 5 sec u speed (kick/ban chance)",
	Callback = function()
		local Player = game.Players.LocalPlayer
local WS = 5
 
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")
 
while wait() do
    Humanoid.WalkSpeed = WS
    wait(5)
    WS = WS + 1
end
      		print("running")
  	end    
})
ScriptsTab:AddButton({
	Name = "Harder Doors",
	Callback = function()
		loadstring(game:HttpGet("https://pastefy.ga/6c2tFyFu/raw"))()
      		print("running")
  	end    
})
ScriptsTab:AddButton({
	Name = "Ig troll doors?!",
	Callback = function()
		local Ambush = game:GetObjects("rbxassetid://11204372315")[1]
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Ambush" then
        v:Destroy()
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Transparency = 1
    end
    if v:IsA("Part") then
        v.Transparency = 1
    end
    if v:IsA("Accessory") then
        v:Destroy()
    end
    game.Players.LocalPlayer.Character.Head.face.Transparency = 1
end
Ambush.Parent = game.Workspace
Ambush.Torso.Anchored = true
game:GetService("RunService").RenderStepped:Connect(function()
    Ambush:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0))
    game.Workspace.CurrentCamera.CFrame = (game.Players.LocalPlayer.Character.Head.CFrame * CFrame.Angles(math.rad(-30),0,0)) * CFrame.new(0,0.5,10)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
      		print("button pressed")
  	end    
})
ScriptsTab:AddButton({
	Name = "Become ambush",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/s9jzHvMC"))()
      		print("button pressed")
  	end    
})
 
ScriptsTab:AddButton({
	Name = "Impossible mode",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/XJtn8QhX"))()
      		print("button pressed")
  	end    
})
OrionLib:MakeNotification({
	Name = "read",
	Content = "I do not own any of these scripts all credits go to scripts/owners of script",
	Image = "rbxassetid://4483345998",
	Time = 50
})