print (" ---- Dark Age is Loading! ---- ")
-- Commend this lines if you don't like some of this features
dofile(minetest.get_modpath("darkage").."/building.lua")
dofile(minetest.get_modpath("darkage").."/furniture.lua")
dofile(minetest.get_modpath("darkage").."/stairs.lua")

----------------
-- Items, Nodes
----------------


minetest.register_node("darkage:straw", {
  description = "Straw",
	tiles = {"darkage_straw.png"},
	is_ground_content = true,
	groups = {snappy=3, flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})


minetest.register_node("darkage:straw_bale", {
  description = "Straw Bale",
	tiles = {"darkage_straw_bale.png"},
	is_ground_content = true,
  drop = 'darkage:straw 4',
	groups = {snappy=2, flammable=2},
	sounds = default.node_sound_leaves_defaults(),
})



----------
-- Crafts
----------


minetest.register_craft({
	output = 'darkage:straw 2',
	recipe = {
    {'default:dry_shrub','default:dry_shrub'},
		{'default:dry_shrub','default:dry_shrub'},
	}
})

minetest.register_craft({
	output = 'darkage:straw 2',
	recipe = {
    {'darkage:dry_leaves','darkage:dry_leaves'},
		{'darkage:dry_leaves','darkage:dry_leaves'},
	}
})

minetest.register_craft({
	output = 'darkage:straw_bale',
	recipe = {
    {'darkage:straw','darkage:straw'},
    {'darkage:straw','darkage:straw'},
	}
})

