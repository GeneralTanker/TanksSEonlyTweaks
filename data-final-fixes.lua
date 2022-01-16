--Noble's Space Exploration Tweaks

require("prototypes.vitbat")

-- SE subgroup fixes

local data_util = require("__space-exploration-postprocess__/data_util")
local types = {"item", "item-with-entity-data", "rail-planner", "capsule"}

local function change_subgroup (name, subgroup, order)
  for _, type in pairs(types) do
    if data.raw[type][name] then
      data.raw[type][name].subgroup = subgroup
      if order then
        data.raw[type][name].order = order
      end
    end
  end
end

if (mods ["bzlead"] and mods ["aai-containers"]) then

    local leadutil = require("__bzlead__.data-util");
    local lead = require("__bzlead__.me");
    if lead.more_entities() then
      change_subgroup("lead-chest", "container-1")
    end

end

if mods ["bzcarbon"] then
   
   local util = require("__bzcarbon__.data-util");

   data_util.replace_or_add_ingredient("vitbat", nil, "graphite", 2)

util.add_ingredient("vitbat", "graphite", 2)

end

if mods ["SmallInlineStorageTank"] then

change_subgroup("small-inline-storage-tank", "pipe")

end

if mods ["CompressedFluids"] then

change_subgroup("fluid-compressor", "pipe")

   if settings.startup["fluid-compressor-singeEntity"] == false then 
   
   change_subgroup("fluid-decompressor", "pipe")
   
   end

end