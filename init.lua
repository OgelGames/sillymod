
local MP = minetest.get_modpath("sillymod")

dofile(MP.."/things/death.lua")
dofile(MP.."/things/wind.lua")
dofile(MP.."/things/names.lua")
dofile(MP.."/things/home.lua")
dofile(MP.."/things/eating.lua")

if minetest.get_modpath("default") then
	dofile(MP.."/things/food.lua")
	dofile(MP.."/things/stick.lua")
end

if minetest.get_modpath("anvil") and minetest.get_modpath("3d_armor") then
	dofile(MP.."/things/repair.lua")
end

if minetest.get_modpath("mobs_animal") then
	dofile(MP.."/things/chicken.lua")
end
