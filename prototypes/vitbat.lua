if settings.startup["tanks-se-tweaks-vitbat"].value == true then
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

data:extend(
{
  {
    type = "recipe",
    name = "vitbat",
	energy_required = 10,
    enabled = false,
    category = "chemistry",
	ingredients =
    {
      {"se-vitalic-acid", 2},
      {"copper-plate", 2},
      {"iron-plate", 2}
    },
    result = "battery",
	result_count = "5"
  },
}
)

function allow_productivity(recipe_name)
  for _, prototype in pairs(data.raw["module"]) do
    if prototype.limitation and string.find(prototype.name, "productivity", 1, true) then
      table.insert(prototype.limitation, recipe_name)
    end
  end
end
allow_productivity("vitbat")

    if mods ["bzlead"] then

       local util = require("__bzlead__.data-util");

       util.replace_ingredient("vitbat", "iron-plate", "lead-plate")

    end