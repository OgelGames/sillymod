
-- Funny names for things

local names = {
	-- Homophones
	["Flower"]       = "Flour",
	["Flour"]        = "Flower",
	["Dye"]          = "Die",
	["Chili"]        = "Chilly",
	["Base"]         = "Bass",
	["Wood"]         = "Would",
	["Desert"]       = "Dessert",
	["Stair"]        = "Stare",
	["Bean"]         = "Been",
	-- "Correct" names
	["Diamond"]      = "Aligned Carbon",
	["Bread"]        = "Raw Toast",
	["Toast"]        = "Cooked Bread",
	["Ice"]          = "Frozen Water",
	["Water"]        = "Melted Ice",
	["Honey"]        = "Bee Vomit",
	["Strawberry"]   = "Big Red Berry",
	["Strawberries"] = "Big Red Berries",
	["Raspberry"]    = "Small Red Berry",
	["Raspberries"]  = "Small Red Berries",
	["Lava"]         = "Liquified Stone",
	["Stone"]        = "Solidified Lava",
	["Meat"]         = "Corpse Bits",
	-- Other
	["Cheese"]       = "Cheez",
	["Sand"]         = "Snad",
	["Sandstone"]    = "Snadstone",
	["Cow"]          = "Woc",
	["Beacon"]       = "Bacon",
	["Teleport"]     = "Toilet Paper",
}

minetest.register_on_mods_loaded(function()
	for item, def in pairs(minetest.registered_items) do
		for old, new in pairs(names) do
			if def.description and def.description:find(old) then
				minetest.override_item(item, {
					description = def.description:gsub(old, new)
				})
				break
			end
		end
	end
end)
