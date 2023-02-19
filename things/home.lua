
-- D'OH!
-- https://github.com/pandorabox-io/in-game/issues/189

minetest.register_chatcommand("homer", {
	description = "D'OH!",
	func = function(player)
		minetest.sound_play("sillymod_doh", {to_player = player}, true)
		return true
	end,
})
