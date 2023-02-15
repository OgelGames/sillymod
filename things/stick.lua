
-- Punny sticks that appear out of nowhere
-- Inspired by a feature in FTB's Stoneblock 3

local names = {
	-- Celebrities
	"Stick Astley",
	"Benestick Cumberbranch",
	"Kim Karstickian",
	"Sticky Gervais",
	-- Sticks
	"Stick of Truth",
    "Stick of Lies",
	"Lucky stick of unluckiness",
	"The stickiest of sticky sticks",
	"Another stick in the wall",
	"Tree in training",
	"Minestick",
	"A boomerang that doesn't come back",
	"Stikipedia",
	"Unsticky stick",
	"Fanta stick",
	"Sus stick",
	-- Quotes
	"I am NOT Groot.",
	"My bark is worse than my bite.",
	"Stick 'em up!",
	"You just got stickrolled!",
	"Workout and get a stick-pack.",
	"I'm a stick, you're a stick!",
	"A stick is for life, not just for torches.",
	"I'm brown and sticky.",
	"To infinitree and beyond!",
	"So versatile, you can stick it anywhere!",
	"I'm stick of this.",
	"You were just in the stick of time!",
	-- Jokes
	"How many stickmen does it take to change a lightbulb?\n"..
		"None. They stick with the old one.",
	"Did you hear they are not making yard sticks any longer?\n"..
		"They’re not making them any shorter either.",
	"Why is a wooden USB stick worthless?\n"..
		"Because it's all bark and no byte.",
	"Did you hear about the stick that became a mathematician?\n"..
		"It was really good at twigonometry.",
}

local timer = 0

minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if timer < 600 then  -- Once every 10 mins
		return
	end
	timer = 0
	local players = minetest.get_connected_players()
	if math.random(10) > #players then
		return
	end
	local stick = ItemStack("default:stick")
	local name = names[math.random(#names)]
	stick:get_meta():set_string("description", name)
	local player = players[math.random(#players)]
	local inv = player:get_inventory()
	if not inv:room_for_item("main", stick) then
		return
	end
	inv:add_item("main", stick)
	minetest.chat_send_player(player:get_player_name(), "Here, have a stick!")
end)
