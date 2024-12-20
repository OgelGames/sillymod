
-- Gives a benefit to smacking someone with a hammer

minetest.override_item("anvil:hammer", {
	on_use = function(stack, player, pointed)
		if pointed.type ~= "object" or not minetest.is_player(pointed.ref) then
			return old_on_use(stack, player, pointed)
		end
		local other_player = pointed.ref
		local name, inv = armor:get_valid_player(other_player)
		if not name then
			return
		end
		local repaired = 0
		for i,s in pairs(inv:get_list("armor")) do
			if s:get_wear() > 0 then
				s:add_wear(-1000)
				repaired = repaired + 1
				inv:set_stack("armor", i, s)
			end
		end
		if repaired > 0 then
			stack:add_wear(100 * repaired)
			minetest.sound_play({name = "anvil_clang"}, {pos = other_player:get_pos()})
		end
		return stack
	end,
})
