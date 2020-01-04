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

-- Config variables/tables.
config.prefix = "."
config.token = "NjYzMTAxNDQxNjk4OTU1MzEz.XhDnag.PF1i7zqN1TnHnj-diaOnFeONXKg"
config.activity = "memowanko 👌 | "..config.prefix.."help"
config.language = "en"

-- Lua modules.
require("./modules/util")(client)
require("./modules/language")(client)
require("./modules/commands")(client)
require("./modules/memegen")(client)

-- Bot events.
client:on("ready", function()
    client:setGame(config.activity)
    print("--------------------------------------")
end)

client:run("Bot "..config.token)