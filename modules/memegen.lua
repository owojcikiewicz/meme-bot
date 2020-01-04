--[[----------------------------------------------

    Discord bot developed by SaturdaysHeroes.xyz

--]]----------------------------------------------
return function(client)
    local httpr = require("coro-http")
    local json = require("json")
    local querystring = require("querystring")

    function mbot.generatememe(message, templateID, username, password, textTop, textBot)
        local headers = {
            template_id = templateID,
            username = username,
            password = password,
            text0 = textTop,
            text1 = textBot
        }
        coroutine.wrap(function()
            local url = "https://api.imgflip.com/caption_image?template_id="..templateID.."&username="..username.."&password="..password.."&text0="..textTop.."&text1="..textBot
            local res, body = httpr.request("POST", url, headers)
            local results = json.decode(body)

            message:reply(results["data"]["url"])
        end)()
    end
end