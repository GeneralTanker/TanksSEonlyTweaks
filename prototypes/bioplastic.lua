local data_util = require("data_util")

local plastic_recipe = table.deepcopy(data.raw["recipe"]["plastic-bar"])

plastic_recipe.enabled = false
plastic_recipe.ingredients = {
		{ name = "se-vitalic-epoxy", amount = 2},
		{ name = "se-specimen", amount = 2},
		{ name = "se-vitamelange-extract", amount = 10},
		{ type = "fluid", name = "se-bio-sludge", amount = 10},
	}
plastic_recipe.name = data_util.mod_prefix .. "plastic-bar"
plastic_recipe.results = {
    { name = "plastic-bar", amount = 20 }
  }
plastic_recipe.energy_required = 20

local plastic_tech = {
    type = "technology",
    name = plastic_recipe.name,
    effects = { { type = "unlock-recipe", recipe = plastic_recipe.name } },
    icon = "__TanksSEonlyTweaks__/graphics/tech/"..plastic_recipe.name..".png",
    icon_size = 128,
    order = "e-g",
    prerequisites = {
		"se-vitalic-epoxy"
		},
    unit = {
    count = 250,
    time = 30,
    ingredients = {
		{ "automation-science-pack", 1 },
		{ "logistic-science-pack", 1 },
		{ "chemical-science-pack", 1 },
		{ "utility-science-pack", 1 },
		{ "production-science-pack", 1 },
		{ "se-biological-science-pack-3", 1 }
		}
    },
  }



data:extend({
    plastic_recipe,
	plastic_tech
  })