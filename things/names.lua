
-- Funny names for things

local names = {
	-- Homophones
	["Flower"]       = "Flour",
	["Flour"]        = "Flower",
	["Dye"]          = "Die",
	["Meat"]         = "Meet",
	["Chili"]        = "Chilly",
	["Base"]         = "Bass",
	["Wood"]         = "Would",
	-- "Correct" names
	["Diamond"]      = "Aligned Carbon",
	["Bread"]        = "Raw Toast",
	["Ice"]          = "Frozen Water",
	["Water"]        = "Melted Ice",
	["Honey"]        = "Bee Vomit",
	["Strawberry"]   = "Big Redberry",
	["Strawberries"] = "Big Redberries",
	["Raspberry"]    = "Small Redberry",
	["Raspberries"]  = "Small Redberries",
	["Lava"]         = "Liquified Stone",
	-- Other
	["Cheese"]       = "Cheez",
	["Sand"]         = "Snad",
	["Sandstone"]    = "Snadstone",
	["Cow"]          = "Woc",
	["Beacon"]       = "Bacon",
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
