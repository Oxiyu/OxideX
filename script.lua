local url = "https://raw.githubusercontent.com/Oxiyu/oxideX/main/Scripts"

local games = {
    [5602055394] = "Hood Modded";
    [4483381587] = "Classic Baseplate";
    [5872075530] = "Anarchy";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
