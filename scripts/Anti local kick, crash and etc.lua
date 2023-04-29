--[[
    Real Name: SirSafe
    Creator(s): I2rys#0663
    Statuses:
        - [2023-04-22]
            - Working | I2rys#0663 | Sirhurt
]]

-- Variables
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

-- Main
--! Kick
setreadonly(mt, false)
mt.__namecall = protect(function(s, ...)
    local m = getnamecallmethod()
    if m == "Kick" then return end
    if m == "FireServer" then
        pcall(function()
            if string.find(..., "Anti") then
                return
            end
        end)

        if not ... then
            return
        end
    end

    return old(s, ...)
end)

hookfunction(game:GetService("Players").LocalPlayer.Kick, protect(function() return end))
--! Crash
game:GetService("ScriptContext"):SetTimeout(0.7)

print("SirSafe successfully executed.")