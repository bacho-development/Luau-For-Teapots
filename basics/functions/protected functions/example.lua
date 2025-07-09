function my_pcall()
    local status, variant = pcall(function()
        local number = math.random()
        if number == 0 then
            return "Hello, world!"
        else
            error("lol")
        end
    end)
    return status, variant
end

function my_xpcall()
    local status, variant = xpcall(function()
        local number = math.random()
        if number == 0 then
            return "Hello, world!"
        else
            error("lol")
        end
    end, function()
        print("Error occured. Traceback:")
        print(debug.traceback())
        return false, "lol"
    end) 
    return status, variant
end