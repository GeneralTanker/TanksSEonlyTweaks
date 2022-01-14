if settings.startup["noble-se-tweaks-vitbat"].value == true then
    data:extend({
      {
          type = "technology",
          name = "vitbattech",
          icon = "__TanksSEonlyTweaks__/graphics/tech/icon_vitbat_tech.png",
	      icon_size = 128,
          effects =
          {
            {
                type = "unlock-recipe",
                recipe = "vitbat"
            }
          },
          prerequisites = {"se-vitalic-acid"},
          unit =
          {
            count = 150,
            ingredients =
            {
              {"automation-science-pack", 1},
              {"logistic-science-pack", 1},
              {"chemical-science-pack", 1},
              {"se-rocket-science-pack", 1},
              {"se-biological-science-pack-1", 1}

            },
            time = 60
          }
      }
    })
end