--[[----------------------------------------------

    Discord bot developed by SaturdaysHeroes.xyz

--]]----------------------------------------------
return function(client)
	local seperator = config.seperator
	
	    client:on("messageCreate", function(message)
        if message.guild == nil then return end 
		if message.author.bot == true then return end

		local content = message.content:lower()
		local author = message.author
		local member = message.member
		local args = content:split(" ")
		local params = content:split(config.seperator)
		local channel = message.channel

		-- Command: Help
		if args[1] == config.prefix..languages[config.language]["commands"]["commandHelp"] then 
			message:reply(languages[config.language]["general"]["helpSent"])
			author:send(languages[config.language]["commands"]["commandHelpMSG"])
		end

		-- Command: Formats
		if args[1] == config.prefix..languages[config.language]["commands"]["commandFormats"] then 
			message:reply(languages[config.language]["general"]["formatsSent"])
			mbot.sendformats(author)
		end

		-- Command: Generate
		if args[1] == config.prefix..languages[config.language]["commands"]["commandGenerate"] then 
			if #params < 4 then return end

			mbot.generatememe(message, params[2], params[3], params[4])
		end
    end)
end
