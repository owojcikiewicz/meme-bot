--[[----------------------------------------------

    Discord bot developed by SaturdaysHeroes.xyz

--]]----------------------------------------------
return function(client)
    languages["en"] = {
        ["general"] = {
            ["memeSent"] = "Here you go, ",
            ["memeFail"] = "Meme generation unsuccessful, please check the parameters and try again!",
            ["memeGenerating"] = "Meme generation in progress, please wait..."
        },
        ["commands"] = {
            ["commandFormats"] = "formats",
            ["commandGenerate"] = "generate"
        }
    }

    languages["pl"] = {
        ["general"] = {
            ["memeSent"] = "Proszę bardzo, ",
            ["memeFail"] = "Tworzenie mema nie powiodło się, sprawdź parametry i spróbuj ponownie!",
            ["memeGenerating"] = "Mem jest w trakcie tworzenia, chwila..."
        },
        ["commands"] = {
            ["commandFormats"] = "szablony",
            ["commandGenerate"] = "generuj"
        }
    }
end