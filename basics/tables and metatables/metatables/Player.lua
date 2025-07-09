local entity_module = require("entity.lua")

local player = entity_module:Create(name="Player") -- this wont error because we set default values in the Entity.lua
print(player) --[[
{
    ["health"] = 100, 
    ["protection"]=100, 
    ["damage"]=10, 
    ["name"]="Player", 
    ["Alive"] = true,
    ["Block"] = false,
    ["Cooldown"] = false,
    ["Summon"] = function: memory addr,
    ["Kill"] = function: memory addr,
    ["Walk"] = function: memory addr,
    ["Attack"] = function: memory addr,
    ["Block"] = function: memory addr
}
]]

--[[
You can also set more functions to the entity by using this:

function player:MyFunction()
    print("my cool function")
end
player:MyFunction() -- "my cool function"

...or this:

player.MyFunction = function()
    print("my cool function")
end
player.MyFunction() -- "my cool function"
]]