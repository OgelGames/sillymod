
-- Gives players some incentive to not unalive

minetest.register_on_dieplayer(function(player)
	local name = player and player:get_player_name()
	if name then
		minetest.sound_play("sillymod_music", {to_player = name, gain = 0.8})
	end
end)
