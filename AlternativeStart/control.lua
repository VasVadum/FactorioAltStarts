--[[
	Code proudly stolen from AyrA!
	Then tweaked to make my own little thing here. ~Vas
	If you use this, please make sure to mention us somewhere like in your readme.  "Code proudly stolen from Vas which was proudly stolen from AyrA!" xP
]]--

-- User Settings
local USE_BASE=				settings.global["basic-kit-base"].value
local USE_STEAM=			settings.global["basic-kit-steam"].value
local ADD_EASY=				settings.global["basic-kit-easy"].value
local ADD_ROBOT=			settings.global["basic-kit-robot"].value
local ADD_CAR=				settings.global["basic-kit-car"].value
local ADD_MONEY=			settings.global["basic-kit-money"].value
local ADD_PERFECTIONIST=	settings.global["basic-kit-perfectionist"].value

--Start the kit table.
local inventorykit={
	{name="iron-plate",count=4}
}
local quickbarkit={
	
}

-- Add stuff to inventory depending on the settings
if USE_BASE then
	table.insert(quickbarkit,{name="burner-mining-drill",count=1})
	table.insert(quickbarkit,{name="stone-furnace",count=1})
else
	table.insert(quickbarkit,{name="electric-mining-drill",count=1})
	table.insert(quickbarkit,{name="medium-electric-pole",count=1})
end

if USE_STEAM then
	table.insert(quickbarkit,{name="offshore-pump",count=1})
	table.insert(quickbarkit,{name="boiler",count=1})
	table.insert(quickbarkit,{name="pipe",count=10})
	table.insert(quickbarkit,{name="steam-engine",count=1})
else
	table.insert(quickbarkit,{name="solar-panel",count=6})
	table.insert(quickbarkit,{name="accumulator",count=3})
	table.insert(quickbarkit,{name="substation",count=2})
end

if ADD_EASY then
	table.insert(inventorykit,{name="iron-plate",count=46})
	table.insert(inventorykit,{name="copper-plate",count=50})
	table.insert(inventorykit,{name="lab",count=1})
	table.insert(inventorykit,{name="science-pack-1",count=50})
	table.insert(inventorykit,{name="science-pack-2",count=50})
	table.insert(quickbarkit,{name="assembling-machine-2",count=3})
end

if ADD_ROBOT then
	table.insert(quickbarkit,{name="roboport",count=1})
	table.insert(inventorykit,{name="logistic-robot",count=50})
	table.insert(inventorykit,{name="construction-robot",count=10})
	table.insert(inventorykit,{name="logistic-chest-passive-provider",count=4}) --Temporary Inventory - Not Quick
	table.insert(inventorykit,{name="logistic-chest-storage",count=4})  --Temporary Inventory - Not Quick
	table.insert(inventorykit,{name="logistic-chest-requester",count=4})  --Temporary Inventory - Not Quick
end

if ADD_CAR then
	table.insert(quickbarkit,{name="car",count=1}) -- quick
	table.insert(inventorykit,{name="solid-fuel",count=5})
end

if ADD_MONEY then
	table.insert(inventorykit,{name="coin",count=50})
end

if ADD_PERFECTIONIST then
	table.insert(inventorykit,{name="landfill",count=100}) --Temporary Inventory - Not Quick
end

script.on_event(defines.events.on_player_created,function(param)
	--get the joined player. This makes the code, that follows shorter
	local p=game.players[param.player_index]

	--clear all player inventories
	for i,v in pairs(defines.inventory) do
		pcall(function()
			p.get_inventory(v).clear()
		end)
	end

	--Add items from the 'quickbarkit' table
	local inv=p.get_inventory(defines.inventory.player_quickbar)
	for i,v in pairs(quickbarkit) do
		inv.insert(v)
	end
	--When ready, I will have some code here to auto split quickbarkit items after an array is larger than 10 objects.
	
	-- We add our items to the player's inventory now.
	local inv=p.get_inventory(defines.inventory.player_main)
	for i,v in pairs(inventorykit) do
		inv.insert(v)
	end
	p.get_inventory(defines.inventory.player_tools).insert({name="iron-axe",count=1})
	p.get_inventory(defines.inventory.player_guns).insert({name="pistol",count=1})
	p.get_inventory(defines.inventory.player_ammo).insert({name="firearm-magazine",count=10})
	-- Lastly, we must add the equipment items.  However, this is also going to remain temporarily commented instead.
end)