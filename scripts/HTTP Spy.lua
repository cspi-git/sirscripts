--[[
    Creator(s): ou1z
    Developer(s): I2rys
    Source: https://github.com/ou1z/Roblox-Scripts
    Statuses:
        - [2023-04-22]
            - Working | I2rys#0663 | Sirhurt
]]

hookfunction(game.HttpGet,function(self,url,...)
    print("HttpGet request sent to: "..url)
    return g(self,url,...)
end)
  
hookfunction(game.HttpGetAsync,function(self,url,...)
    print("HttpGetAsync request sent to: "..url)
    return ga(self,url,...)
end)
  
hookfunction(game.HttpPostAsync,function(self,url,...)
    print("HttpPostAsync request sent to: "..url)
    warn("HttpPostAsync arguments: "..(...))
    return pa(self,url,...)
end)
  
hookfunction(request,function(r,...)
    print(r.Method or "GET" .. " request sent to: " .. r.url)
    return pa(r,...)
end)

print("HTTP Spy successfully loaded.")