--[[
    Creator(s): RandomAdamYT
    Source: https://github.com/RandomAdamYT/DarkHub/
    Statuses:
        - [2023-04-28]
        	- Working | I2rys#0663 | Sirhurt
]]

-- compatible with key sys version 1340a4e
local Request = http_request or syn and syn.request or request or nil
local CurrentDiscordInvite = isfile('Invite.DARKHUB') and readfile('Invite.DARKHUB') or nil
if Request then
    local Invite
    local r = Request(
    {
        ['Method'] = 'GET',
        ['Headers'] = {
            ['discordLinkRequest'] = "true"
        },
        ['Url'] = 'https://api.darkhub.cloud/v3/discord/raw'
    })
    if r.StatusCode ~= 200 or not r.Successful then
        Invite = "darkhub"
    else
        Invite = r.Body
    end
    if not CurrentDiscordInvite or CurrentDiscordInvite ~= Invite then
        Request(
            {
                ['Method'] = 'POST',
                ['Headers'] = {
                    ["origin"] = 'https://discord.com',
                    ["Content-Type"] = "application/json"
                },
                ['Url'] = 'http://127.0.0.1:6463/rpc?v=1',
                ['Body'] = game:GetService('HttpService'):JSONEncode({cmd="INVITE_BROWSER",args={code=Invite},nonce=game:GetService('HttpService'):GenerateGUID(false):lower()})
            }    
        )
        writefile('Invite.DARKHUB',Invite)
    end
end
loadstring(game:HttpGet("https://cdn.darkhub.cloud/init.txt", true))()