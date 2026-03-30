
-- The sounds of the pain of unaliving

minetest.register_on_dieplayer(function(player)
	local pos = player and player:get_pos()
	if pos then
		minetest.sound_play("sillymod_oof", {gain = 0.8, pos = pos})
	end
end)
