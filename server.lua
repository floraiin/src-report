



   RegisterServerEvent('src-report:getinfo', function (data)
    local name = GetPlayerName(source)

    local connect = {
        {
            ["color"] = "8663711",
            ["title"] = name.." Sent Report",
            ["description"] = "REPORTED ID: **"..data.id.."**\nMessage: **"..data.message.."**",
	        ["footer"] = {
                ["text"] = Config.communityname,
                ["icon_url"] = Config.communtiylogo,
            },
        }
    }

PerformHttpRequest(Config.logs, function(err, text, headers) end, 'POST', json.encode({username = Config.communityname, embeds = connect}), { ['Content-Type'] = 'application/json' })

   end)