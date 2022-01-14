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