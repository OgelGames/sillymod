
-- Chickens with more personality

local names = {
	"Albert Eggstein", "Amelia Egghart", "Hen Solo", "Mary Poopins",
	"Birdzilla", "Cluck Norris", "Chick Jagger", "Chick Astley",
	"Nugget", "Fluffy Butt", "Waddles", "Henny",
	"Mc Pecky", "Chickie", "Clucky", "Doodle",
	"Feathers", "Eggy", "Kevin", "Sir Clucks-a-lot",
	"Batman", "Alarm Clock", "Flappy Bird", "Trouble"
}

local function chicken_near_pos(pos)
	for _,o in ipairs(minetest.get_objects_inside_radius(pos, 16)) do
		local e = o:get_luaentity()
		if e and e.name == "mobs_animal:chicken" then
			return true
		end
	end
	return false
end

local function spawn_chicken(player)
	local pos = player:get_pos()
	if chicken_near_pos(pos) then
		return
	end
	local new_pos = minetest.find_node_near(pos, 5, "air")
	if new_pos then
		new_pos.y = new_pos.y + 0.5
		mobs:add_mob(new_pos, {
			name = "mobs_animal:chicken",
			nametag = names[math.random(#names)],
			ignore_count = true,
		})
	end
end

local timer = 0

minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if timer < 600 then  -- Once every 10 mins
		return
	end
	timer = 0
	for _,player in pairs(minetest.get_connected_players()) do
		if math.random(5) == 1 then  -- 20% chance
			spawn_chicken(player)
		end
	end
end)
