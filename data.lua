require("prototypes.bioplastic.lua")
require("prototypes.iridiumaxe.lua")

--- Krastorio 2 Solid Fuel & Rocket Fuel Compabilty (Solid Fuel for SE, Rocket Fuel for K2) 

--if data.raw.recipe["recpie name"] then
--		data.raw.recipe["recpie name"].category = "fuel-refinery" ("fuel-refining" for SE)
	--end

if mods ["CharcoalBurner"] then

if data.raw.recipe["char-coal-coke"] then
		data.raw.recipe["char-coal-coke"].category = "fuel-refining"
	end

if data.raw.recipe["char-solid-fuel-from-creosote-oil"] then
		data.raw.recipe["char-solid-fuel-from-creosote-oil"].category = "fuel-refining"
	end

end

if mods ["Wood_Gasification"] then

if data.raw.recipe["solid-fuel-from-tar"] then
		data.raw.recipe["solid-fuel-from-tar"].category = "fuel-refining"
	end

end

if mods ["Bio_Industries"] then

if data.raw.recipe["bi-solid-fuel"] then
		data.raw.recipe["bi-solid-fuel"].category = "fuel-refining"
	end

end