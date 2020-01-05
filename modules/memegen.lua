--[[----------------------------------------------

    Discord bot developed by SaturdaysHeroes.xyz

--]]----------------------------------------------
return function(client)
    local httpr = require("coro-http")
    local json = require("json")
    local querystring = require("querystring")

    function mbot.sendformats(user)
        coroutine.wrap(function()
            local url = "https://api.imgflip.com/get_memes"
            local res, body = httpr.request("GET", url)
            local results = json.decode(body)
            local meme 

            for _, v in pairs(results["data"]) do
                for _, v in pairs(v) do
                    user:send("**"..languages[config.language]["commands"]["commandGetFormats"]["name"].."** "..v.name.."\n".."**"..languages[config.language]["commands"]["commandGetFormats"]["id"].."** "..v.id.."\n".."**"..languages[config.language]["commands"]["commandGetFormats"]["url"].."** "..v.url)
                end
            end
        end)()
    end

    function mbot.generatememe(message, input, textTop, textBot)
        coroutine.wrap(function()
            local url = "https://api.imgflip.com/get_memes"
            local res, body = httpr.request("GET", url)
            local results = json.decode(body)
            local meme 

            for _, v in pairs(results["data"]) do
                for _, v in pairs(v) do
                    if string.lower(v.id.." ") == input then meme = tostring(v.id) break end
                    if string.lower(v.name.." ") == input then meme = tostring(v.id) break end
                end
            end

            message:reply(languages[config.language]["general"]["memeGenerating"])
            local info = {  
                username = config.login["username"] or nil,
                password = config.login["password"] or nil,
                text0 = textTop or nil,
                text1 = textBot or nil,
            }

            for _, v in pairs(info) do
                if v == nil then 
                    message:reply(languages[config.language]["general"]["memeFail"].." ("..k..")")
                    return 
                end
            end

            if meme == nil then message:reply(languages[config.language]["general"]["memeFail"]) return end

            local url = "https://api.imgflip.com/caption_image?template_id="..meme.."&username="..info.username.."&password="..info.password.."&text0="..textTop.."&text1="..textBot
            local res, body = httpr.request("POST", url, headers)
            local results = json.decode(body)

            if results["success"] == false or nil then message:reply(languages[config.language]["general"]["memeFail"]) return end

            message:reply(languages[config.language]["general"]["memeSent"]..results["data"]["url"])
        end)()
    end
end