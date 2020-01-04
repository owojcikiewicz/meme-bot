--[[----------------------------------------------

    Discord bot developed by SaturdaysHeroes.xyz

--]]----------------------------------------------
return function(client)
    client:on("messageCreate", function(message)
        if message.guild == nil then return end 
		if message.author.bot == true then return end

		local content = message.content:lower()
		local author = message.author
		local member = message.guild.members:get(message.author.id)
		--local args = content:split(" ")
		local channel = message.channel

        mbot.generatememe(message, content, "SaturdaysH_MEMEBOT", "__memebot__", "Niedzialajacy bot :(", "Dzialajacy bot ktory tworzy memy i w ogole zajebioza lol")
    end)
end