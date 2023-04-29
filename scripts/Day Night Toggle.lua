--[[
    Creator(s): WeAreDevs
    Source: https://wearedevs.net/scripts/d/61081fc3fd8901d6c92747a3/Night%20Time%20Toggle
    Statuses:
        - [2023-04-22]
        	- Working | I2rys#0663 | Sirhurt
]]

lighting = game:GetService("Lighting")
if lighting.TimeOfDay == "00:00:00" then
    lighting.TimeOfDay = 11
else 
    lighting.TimeOfDay = 24
end