local data_util = require("data_util")


local iridiumaxe_tech = {
    type = "technology",
    name = "iridium-axe",
    effects = { { type = "character-mining-speed", modifier = 3 } },
    icon = "__TanksSEonlyTweaks__/graphics/tech/iridium-axe.png",
    icon_size = 128,
    order = "e-g",
    prerequisites = {
		"se-heavy-girder",
		"steel-axe"
		},
    unit = {
    count = 100,
    time = 30,
    ingredients = {
		{ "se-material-science-pack-1", 1 }
		}
    },
  }



data:extend({
	iridiumaxe_tech
  })