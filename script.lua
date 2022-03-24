local url = "https://raw.githubusercontent.com/Oxiyu/OxideX/main/Scripts"

local games = {
    [5602055394] = "Hood_Modded";
    [8790264447] = "Classic_Baseplate";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
