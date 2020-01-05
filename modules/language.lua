--[[----------------------------------------------

    Discord bot developed by SaturdaysHeroes.xyz

--]]----------------------------------------------
return function(client)
    languages["en"] = {
        ["general"] = {
            ["memeSent"] = "Here you go, ",
            ["memeFail"] = "Meme generation unsuccessful, please check the parameters and try again!",
            ["memeGenerating"] = "Meme generation in progress, please wait...",
            ["helpSent"] = "I've sent a list of my commands, check your DMs!",
            ["formatsSent"] = "I've sent you a list of formats, check your DMs!"
        },
        ["commands"] = {
            ["commandHelp"] = "help",
            ["commandFormats"] = "formats",
            ["commandGenerate"] = "generate",
            ["commandGetFormats"] = {
                ["name"] = "Name:",
                ["id"] = "ID:",
                ["url"] = "Preview:"
            },
            ["commandHelpMSG"] = "Hi, I was created for generating memes using pre-existing formats and the Imgflip API.\n\nIn order to get a full list of meme formats, please use the `"..config.prefix..config.commands[config.language]["commandFormats"].."` command.\nTo generate a meme, you will have to use the `"..config.prefix..config.commands[config.language]["commandGenerate"].."` command, usage: `"..config.prefix..config.commands[config.language]["commandGenerate"].." -format -toptext -bottomtext`."
        }
    }
    
    languages["pl"] = {
        ["general"] = {
            ["memeSent"] = "Proszę bardzo, ",
            ["memeFail"] = "Tworzenie mema nie powiodło się, sprawdź parametry i spróbuj ponownie!",
            ["memeGenerating"] = "Mem jest w trakcie tworzenia, chwila...",
            ["helpSent"] = "Wysłałem Ci listę moich komend, sprawdź PW!",
            ["formatsSent"] = "Wysłałem Ci listę wszystkich szablonów, sprawddź PW!"
        },
        ["commands"] = {
            ["commandHelp"] = "help",
            ["commandFormats"] = "szablony",
            ["commandGenerate"] = "generuj",
            ["commandGetFormats"] = {
                ["name"] = "Nazwa:",
                ["id"] = "ID:",
                ["url"] = "Podgląd:"
            },
            ["commandHelpMSG"] = "Cześć, powstałem w celu prostego tworzenia memów korzystając z popularnych szablonów, moją funkcjonalność czerpię z API Impflip.\n\nAby otrzymać listę wszystkich dostępnych szablonów, użyj komendy `"..config.prefix..config.commands[config.language]["commandFormats"].."`.\nAby stworzyć mema, należy użyć komendy `"..config.prefix..config.commands[config.language]["commandGenerate"].."`, użycie: `"..config.prefix..config.commands[config.language]["commandGenerate"].." -szablon -gornytekst -dolnytekst`."
        }
    }
end

--["commandHelp"] = "Hi, I was created for generating memes using pre-existing formats and the Imgflip API.\n\nIn order to get a full list of formats, please use the `"..config.prefix..""..languages[config.language]["commands"]["commandFormats"].."` command.\nTo generate a meme, you will have to use the `"..config.prefix..""..languages[config.language]["commands"]["commandGenerate"].."` command, usage: `"..config.prefix..""..languages[config.language]["commands"]["commandGenerate"].." -format -toptext -bottomtext`."