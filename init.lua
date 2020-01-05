--[[----------------------------------------------

    Discord bot developed by SaturdaysHeroes.xyz

--]]----------------------------------------------
local discordia = require("discordia")
local client = discordia.Client()
_G.mbot = {}
_G.config = {}
_G.languages = {}

-- Additional extensions.
local json = require("json")
local http = require("coro-http")
discordia.extensions()

-- Config variables/tables.
config.prefix = ">"
config.token = ""
config.activity = "memes 👌 | "..config.prefix.."help"
config.language = "en"
config.seperator = "-"
config.login = {
    username = "Imgflip.com_USERNAME",
    password = "Imgflip.com_PASSWORD"
}
config.commands = {
    ["en"] = {
        ["commandFormats"] = "formats",
        ["commandGenerate"] = "generate",
    },
    ["pl"] = {
        ["commandFormats"] = "szablony",
        ["commandGenerate"] = "generuj",
    },
}

-- Lua modules.
require("./modules/language")(client)
require("./modules/commands")(client)
require("./modules/memegen")(client)

-- Bot events.
client:on("ready", function()
    client:setGame(config.activity)
    print("--------------------------------------")
end)

client:run("Bot "..config.token)
