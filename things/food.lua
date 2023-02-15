
-- Makes the ground edible

local edible_stuff = {
	["default:cobble"]           = 1,
	["default:stone"]            = 1,
	["default:desert_cobble"]    = 1,
	["default:desert_stone"]     = 1,
	["default:sand"]             = 1,
	["default:sandstone"]        = 4,
	["default:desert_sand"]      = 1,
	["default:desert_sandstone"] = 4,
	["default:silver_sand"]      = 1,
	["default:silver_sandstone"] = 4,
	["default:dirt"]             = 2,
	["default:gravel"]           = 1,
	["default:ice"]              = 2,
	["default:snow"]             = 1,
	["default:snowblock"]        = 2,
	-- Diamonds and sticks, just because I wanted to include them.
	["default:diamond"]          = 20,
	["default:stick"]            = 1,
}

for name, fp in pairs(edible_stuff) do
	minetest.override_item(name, {
		on_use = minetest.item_eat(fp),
	})
end
