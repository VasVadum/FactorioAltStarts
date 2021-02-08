--[[
	Code originally referenced from AyrA.
	Modified greatly and improved a lot by Vas.
	If you use this, please make sure to mention us somewhere like in your readme.
]]--

-- User Settings
local BASE_KIT=			settings.global["basic-kit-base"].value
local EQUIPME=			settings.global["basic-kit-equipment"].value
local POWER_KIT=		settings.global["basic-kit-power"].value
local MORE_SUBS=		settings.global["basic-kit-moresubs"].value
local ADD_EASY=			settings.global["basic-kit-easy"].value
local ADD_MODULES=		settings.global["basic-kit-module"].value
local ADD_ROBOTS=		settings.global["basic-kit-robot"].value
local ADD_ROCHEST=		settings.global["basic-kit-robotchests"].value
local ADD_CAR=			settings.global["basic-kit-car"].value
local PERFECTIONIST=	settings.global["basic-kit-perfectionist"].value
local MODU_ROBO=		settings.global["basic-kit-modularrobots"].value
local START_EQUIP=			settings.global["basic-kit-start-string"].value
local START_TECH=			settings.global["basic-kit-start-research-string"].value
local DISASABLE_EQUIP=		settings.global["basic-kit-disable-equipment-string"].value
local DISABLE_TECH=			settings.global["basic-kit-disable-research-string"].value

--Start the kit table.
local kit={
	{name="iron-plate",count=4}
}
-- Add stuff to inventory depending on the settings

-- Lets create a splitter function so we can split our additional strings properly.
local function split(inputstr, sep)
	if sep == nil then sep = "%s" end
	t={} i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do 
		t[i] = str
		i = i + 1
	end return t
end

--[[Choose Mining Equipment]]--
if BASE_KIT == "Base" then
	kit["burner-mining-drill"]=1
	kit["stone-furnace"]=1
elseif BASE_KIT == "Electric" then
	kit["electric-mining-drill"]=1
	kit["medium-electric-pole"]=1
	kit["stone-furnace"]=1
elseif BASE_KIT == "Easy Electric" then
	kit["electric-mining-drill"]=2
	kit["medium-electric-pole"]=5
	kit["stone-furnace"]=3
elseif BASE_KIT == "Mega Electric" then
	kit["electric-mining-drill"]=4
	kit["medium-electric-pole"]=20
	kit["stone-furnace"]=6
elseif BASE_KIT == "Epic Electric" then
	kit["electric-mining-drill"]=8
	kit["electric-furnace"]=10
	if MORE_SUBS then
		kit["substation"]=16
	else
		kit["substation"]=4
	end
end

--[[Choose your combat starting gear]]--
if EQUIPME == "Civilian" then
	kit["pistol"]=1
	kit["firearm-magazine"]=10
elseif EQUIPME == "Soldier" then
	kit["submachine-gun"]=1
	kit["shotgun"]=1
	kit["piercing-rounds-magazine"]=20
	kit["piercing-shotgun-shell"]=20
elseif EQUIPME == "Rambo" then
	kit["submachine-gun"]=1
	kit["flamethrower"]=1
	kit["combat-shotgun"]=1
	kit["uranium-rounds-magazine"]=100
	kit["flamethrower-ammo"]=50
	kit["piercing-shotgun-shell"]=50
end

--[[Steam or Solar start]]--
if POWER_KIT == "Steam" then
	kit["offshore-pump"]=1
	kit["boiler"]=1
	kit["pipe"]=10
	kit["steam-engine"]=1
elseif POWER_KIT == "Solar" then
	kit["solar-panel"]=6
	kit["accumulator"]=3
	if MORE_SUBS then
		kit["substation"]=8
	else
		kit["substation"]=2
	end
elseif POWER_KIT == "Super Solar" then
	kit["solar-panel"]=12
	kit["accumulator"]=6
	if MORE_SUBS then
		kit["substation"]=16
	else
		kit["substation"]=4
	end
elseif POWER_KIT == "Insane Solar" then
	kit["solar-panel"]=24
	kit["accumulator"]=12
	if MORE_SUBS then
		kit["substation"]=32
	else
		kit["substation"]=8
	end
end

--[[Easier Start]]--
if ADD_EASY == "Resources" then
	kit["iron-plate"]=46
	kit["copper-plate"]=50
elseif ADD_EASY == "Power Armor" then
	kit["modular-armor"]=1
	kit["energy-shield-equipment"]=1
	kit["night-vision-equipment"]=1
	kit["battery-equipment"]=1
	kit["solar-panel-equipment"]=7
	kit["exoskeleton-equipment"]=1
elseif ADD_EASY == "Research Equipment" then
	if game.active_mods["timed_technology"] then
		kit["lab"]=1
	else
		kit["lab"]=1
		kit["automation-science-pack"]=50 --science-pack-1
		kit["logistic-science-pack"]=50 --science-pack-2
		kit["chemical-science-pack"]=50 --science-pack-3
	end
elseif ADD_EASY == "Power Armor & Resources" then
	kit["iron-plate"]=46
	kit["copper-plate"]=50
	kit["modular-armor"]=1
	kit["energy-shield-equipment"]=1
	kit["night-vision-equipment"]=1
	kit["battery-equipment"]=1
	kit["solar-panel-equipment"]=7
	kit["exoskeleton-equipment"]=1
elseif ADD_EASY == "All" then
	kit["iron-plate"]=46
	kit["copper-plate"]=50
	kit["modular-armor"]=1
	kit["energy-shield-equipment"]=1
	kit["night-vision-equipment"]=1
	kit["battery-equipment"]=1
	kit["solar-panel-equipment"]=7
	kit["exoskeleton-equipment"]=1
	kit["lab"]=1
	kit["automation-science-pack"]=50 --science-pack-1
	kit["logistic-science-pack"]=50 --science-pack-2
	kit["chemical-science-pack"]=50 --science-pack-3
end

--[[Modules]]--
if ADD_MODULES == "Speed" then
	kit["speed-module-3"]=4
elseif ADD_MODULES == "Productivity" then
	kit["productivity-module-3"]=4
elseif ADD_MODULES == "Energy Efficiency" then
	kit["effectivity-module-3"]=4
elseif ADD_MODULES == "All" then
	kit["speed-module-3"]=4
	kit["productivity-module-3"]=4
	kit["effectivity-module-3"]=4
elseif ADD_MODULES == "4x All" then
	kit["speed-module-3"]=16
	kit["productivity-module-3"]=16
	kit["effectivity-module-3"]=16
end

--[[Start with bots]]--
if ADD_ROBOTS == "Basic" then
	if MODU_ROBO then --[[settings.global["bobmods-logistics-disableroboports"].value == true OR game.active_mods["boblogistics"]]--
		kit["bob-robochest"]=1
		kit["bob-robo-charge-port"]=1
		kit["bob-logistic-zone-interface"]=1
		kit["bob-logistic-zone-expander"]=1
	else
		kit["roboport"]=1
	end
	kit["logistic-robot"]=10
	kit["construction-robot"]=2
	if ADD_ROCHEST then
		kit["logistic-chest-passive-provider"]=3
		kit["logistic-chest-storage"]=1
		kit["logistic-chest-requester"]=3
	end
elseif ADD_ROBOTS == "Lots" then
	if MODU_ROBO then
		kit["bob-robochest"]=1
		kit["bob-robo-charge-port"]=2
		kit["bob-logistic-zone-interface"]=1
		kit["bob-logistic-zone-expander-2"]=1
	else
		kit["roboport"]=1
	end
	kit["logistic-robot"]=25
	kit["construction-robot"]=5
	if ADD_ROCHEST then
		kit["logistic-chest-passive-provider"]=6
		kit["logistic-chest-storage"]=3
		kit["logistic-chest-requester"]=6
	end
elseif ADD_ROBOTS == "Too Many" then
	if MODU_ROBO then
		kit["bob-robochest"]=1
		kit["bob-robo-charge-port"]=3
		kit["bob-logistic-zone-interface"]=1
		kit["bob-logistic-zone-expander-3"]=2
	else
		kit["roboport"]=2
	end
	kit["logistic-robot"]=50
	kit["construction-robot"]=10
	if ADD_ROCHEST then
		kit["logistic-chest-passive-provider"]=10
		kit["logistic-chest-storage"]=5
		kit["logistic-chest-requester"]=10
	end
elseif ADD_ROBOTS == "Too Many ++" then
	if MODU_ROBO then
		kit["bob-robochest"]=2
		kit["bob-robo-charge-port"]=4
		kit["bob-robo-charge-port-large"]=1
		kit["bob-logistic-zone-interface"]=1
		kit["bob-logistic-zone-expander-4"]=2
	else
		kit["roboport"]=4
	end
	kit["logistic-robot"]=100
	kit["construction-robot"]=20
	if ADD_ROCHEST then
		kit["logistic-chest-passive-provider"]=15
		kit["logistic-chest-storage"]=10
		kit["logistic-chest-requester"]=15
		kit["logistic-chest-active-provider"]=5
		kit["logistic-chest-buffer"]=5
	end
end

--[[Add a car]]--
if ADD_CAR == "Car" then
	kit["car"]=1
	kit["solid-fuel"]=5
elseif ADD_CAR == "Tank" then
	kit["tank"]=1
	kit["solid-fuel"]=5
elseif ADD_CAR == "Train" then
	kit["locomotive"]=1
	kit["cargo-wagon"]=2
	kit["fluid-wagon"]=1
	kit["solid-fuel"]=50
	kit["rail"]=300
	kit["train-stop"]=2
	kit["rail-signal"]=20
	kit["rail-chain-signal"]=20
end

if PERFECTIONIST > 0 then
	kit["landfill"]=PERFECTIONIST
end

-- MODS
if settings.startup["start-with-vehicle-miner"].value == true then
	kit["vehicle-miner"]=1
end

if settings.startup["start-with-unit-remote-control"].value == true then
	kit["unit-remote-control"]=1
end

game.on_init(function(event)
	if remote.interfaces["freeplay"]["set_created_items"] then
		remote.call("freeplay", "set_created_items", kit);
	end
end);

-- Now lets get the player that just joined, and clear all of his inventory to replace with ours.
--[[
script.on_event(defines.events.on_player_created,function(param)
	local p=game.players[param.player_index]
	
	if START_EQUIP ~= "" then
		local items = split(START_EQUIP,",")
		for no, item_str in pairs(items) do
			local info = split(item_str,":")
			if game.item_prototypes[info[1] ] then
				table.insert(kit, {name=info[1],count=tonumber(info[2])})
			end
		end
	end

	--[if START_TECH == "everything" then
		--p.force.research_all_technologies()
	elseif ~= "" then
		local techs = split(START_TECH,",")
		for no, tech_str in pairs(techs) do
			--p.force.technology[techs].enabled=true
		end
	end]--

	-- Here we run a check to clear all sections of his inventory.
	for i,v in pairs(defines.inventory) do
		pcall(function()
			p.get_inventory(v).clear()
		end)
	end

	-- Now we will add all the items from our mod settings choices.
	for i,v in pairs(kit) do
		p.insert(v)
	end
end)
]]--