
-- Lets players create wind by sneaking

controls.register_on_press(function(player, key)
	if key == "sneak" and math.random(5) == 5 then
		minetest.sound_play("sillymod_wind", {pos = player:get_pos()}, true)
	end
end)
