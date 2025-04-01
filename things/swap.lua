
-- Liquid imposters

local water_source = minetest.registered_nodes["default:water_source"].tiles
local water_flowing = minetest.registered_nodes["default:water_flowing"].tiles
local water_flowing_s = minetest.registered_nodes["default:water_flowing"].special_tiles
local lava_source = minetest.registered_nodes["default:lava_source"].tiles
local lava_flowing = minetest.registered_nodes["default:lava_flowing"].tiles
local lava_flowing_s = minetest.registered_nodes["default:lava_flowing"].special_tiles

minetest.override_item("default:water_source", {tiles = lava_source})
minetest.override_item("default:water_flowing", {tiles = lava_flowing, special_tiles = lava_flowing_s})
minetest.override_item("default:lava_source", {tiles = water_source})
minetest.override_item("default:lava_flowing", {tiles = water_flowing, special_tiles = water_flowing_s})


local river_source = minetest.registered_nodes["default:river_water_source"].tiles
local river_flowing = minetest.registered_nodes["default:river_water_flowing"].tiles
local river_flowing_s = minetest.registered_nodes["default:river_water_flowing"].special_tiles

if minetest.get_modpath("technic") then
	lava_source = minetest.registered_nodes["technic:corium_source"].tiles
	lava_flowing = minetest.registered_nodes["technic:corium_flowing"].tiles
	lava_flowing_s = minetest.registered_nodes["technic:corium_flowing"].special_tiles
	minetest.override_item("technic:corium_source", {tiles = river_source})
	minetest.override_item("technic:corium_flowing", {tiles = river_flowing, special_tiles = river_flowing_s})
end

minetest.override_item("default:river_water_source", {tiles = lava_source})
minetest.override_item("default:river_water_flowing", {tiles = lava_flowing, special_tiles = lava_flowing_s})
