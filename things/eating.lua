
-- Players burp when eating food too fast

local last_eaten = {}

minetest.register_on_item_eat(function(_, _, _, player)
	local name = player:get_player_name()
	local now = os.time()
	local last = last_eaten[name]
	if last and now - last < 2 and math.random(5) == 1 then
		minetest.sound_play("sillymod_burp", {pos = player:get_pos()}, true)
	end
	last_eaten[name] = now
end)
