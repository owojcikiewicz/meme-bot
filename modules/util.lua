return function(client)
    function mbot.splitstring(strInput, strSeperator)
        if sep == nil then
                sep = "%s"
        end

        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end

        return t
    end

    function mbot.formatargs(tblArgs)
        local Start, End = nil, nil

        for k, v in pairs(args) do
            if (string.sub(v, 1, 1) == "\"") then
                Start = k
            elseif Start and (string.sub(v, string.len(v), string.len(v)) == "\"") then
                End = k
                break
            end
        end

        if Start and End then
            args[Start] = lavice.strim(table.concat(args, " ", Start, End), "\"")

            for i = 1, (End - Start) do
                table.remove(args, Start + 1)
            end

            args = lavice.formatargs(args)
        end

        return args
    end
end
