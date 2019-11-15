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
	table.insert(kit,{name="burner-mining-drill",count=1})
	table.insert(kit,{name="stone-furnace",count=1})
elseif BASE_KIT == "Electric" then
	table.insert(kit,{name="electric-mining-drill",count=1})
	table.insert(kit,{name="medium-electric-pole",count=1})
	table.insert(kit,{name="stone-furnace",count=1})
elseif BASE_KIT == "Easy Electric" then
	table.insert(kit,{name="electric-mining-drill",count=2})
	table.insert(kit,{name="medium-electric-pole",count=5})
	table.insert(kit,{name="stone-furnace",count=3})
elseif BASE_KIT == "Mega Electric" then
	table.insert(kit,{name="electric-mining-drill",count=4})
	table.insert(kit,{name="medium-electric-pole",count=20})
	table.insert(kit,{name="stone-furnace",count=6})
elseif BASE_KIT == "Epic Electric" then
	table.insert(kit,{name="electric-mining-drill",count=8})
	table.insert(kit,{name="electric-furnace",count=10})
	if MORE_SUBS then
		table.insert(kit,{name="substation",count=16})
	else
		table.insert(kit,{name="substation",count=4})
	end
end

--[[Choose your combat starting gear]]--
if EQUIPME == "Civilian" then
	table.insert(kit,{name="pistol",count=1})
	table.insert(kit,{name="firearm-magazine",count=10})
elseif EQUIPME == "Soldier" then
	table.insert(kit,{name="submachine-gun",count=1})
	table.insert(kit,{name="shotgun",count=1})
	table.insert(kit,{name="piercing-rounds-magazine",count=20})
	table.insert(kit,{name="piercing-shotgun-shell",count=20})
elseif EQUIPME == "Rambo" then
	table.insert(kit,{name="submachine-gun",count=1})
	table.insert(kit,{name="flamethrower",count=1})
	table.insert(kit,{name="combat-shotgun",count=1})
	table.insert(kit,{name="uranium-rounds-magazine",count=100})
	table.insert(kit,{name="flamethrower-ammo",count=50})
	table.insert(kit,{name="piercing-shotgun-shell",count=50})
end

--[[Steam or Solar start]]--
if POWER_KIT == "Steam" then
	table.insert(kit,{name="offshore-pump",count=1})
	table.insert(kit,{name="boiler",count=1})
	table.insert(kit,{name="pipe",count=10})
	table.insert(kit,{name="steam-engine",count=1})
elseif POWER_KIT == "Solar" then
	table.insert(kit,{name="solar-panel",count=6})
	table.insert(kit,{name="accumulator",count=3})
	if MORE_SUBS then
		table.insert(kit,{name="substation",count=8})
	else
		table.insert(kit,{name="substation",count=2})
	end
elseif POWER_KIT == "Super Solar" then
	table.insert(kit,{name="solar-panel",count=12})
	table.insert(kit,{name="accumulator",count=6})
	if MORE_SUBS then
		table.insert(kit,{name="substation",count=16})
	else
		table.insert(kit,{name="substation",count=4})
	end
elseif POWER_KIT == "Insane Solar" then
	table.insert(kit,{name="solar-panel",count=24})
	table.insert(kit,{name="accumulator",count=12})
	if MORE_SUBS then
		table.insert(kit,{name="substation",count=32})
	else
		table.insert(kit,{name="substation",count=8})
	end
end

--[[Easier Start]]--
if ADD_EASY == "Resources" then
	table.insert(kit,{name="iron-plate",count=46})
	table.insert(kit,{name="copper-plate",count=50})
elseif ADD_EASY == "Power Armor" then
	table.insert(kit,{name="modular-armor",count=1})
	table.insert(kit,{name="energy-shield-equipment",count=1})
	table.insert(kit,{name="night-vision-equipment",count=1})
	table.insert(kit,{name="battery-equipment",count=1})
	table.insert(kit,{name="solar-panel-equipment",count=7})
	table.insert(kit,{name="exoskeleton-equipment",count=1})
elseif ADD_EASY == "Research Equipment" then
	if game.active_mods["timed_technology"] then
		table.insert(kit,{name="lab",count=1})
	else
		table.insert(kit,{name="lab",count=1})
		table.insert(kit,{name="automation-science-pack",count=50}) --science-pack-1
		table.insert(kit,{name="logistic-science-pack",count=50}) --science-pack-2
		table.insert(kit,{name="chemical-science-pack",count=50}) --science-pack-3
	end
elseif ADD_EASY == "Power Armor & Resources" then
	table.insert(kit,{name="iron-plate",count=46})
	table.insert(kit,{name="copper-plate",count=50})
	table.insert(kit,{name="modular-armor",count=1})
	table.insert(kit,{name="energy-shield-equipment",count=1})
	table.insert(kit,{name="night-vision-equipment",count=1})
	table.insert(kit,{name="battery-equipment",count=1})
	table.insert(kit,{name="solar-panel-equipment",count=7})
	table.insert(kit,{name="exoskeleton-equipment",count=1})
elseif ADD_EASY == "All" then
	table.insert(kit,{name="iron-plate",count=46})
	table.insert(kit,{name="copper-plate",count=50})
	table.insert(kit,{name="modular-armor",count=1})
	table.insert(kit,{name="energy-shield-equipment",count=1})
	table.insert(kit,{name="night-vision-equipment",count=1})
	table.insert(kit,{name="battery-equipment",count=1})
	table.insert(kit,{name="solar-panel-equipment",count=7})
	table.insert(kit,{name="exoskeleton-equipment",count=1})
	table.insert(kit,{name="lab",count=1})
	table.insert(kit,{name="automation-science-pack",count=50}) --science-pack-1
	table.insert(kit,{name="logistic-science-pack",count=50}) --science-pack-2
	table.insert(kit,{name="chemical-science-pack",count=50}) --science-pack-3
end

--[[Modules]]--
if ADD_MODULES == "Speed" then
	table.insert(kit,{name="speed-module-3",count=4})
elseif ADD_MODULES == "Productivity" then
	table.insert(kit,{name="productivity-module-3",count=4})
elseif ADD_MODULES == "Energy Efficiency" then
	table.insert(kit,{name="effectivity-module-3",count=4})
elseif ADD_MODULES == "All" then
	table.insert(kit,{name="speed-module-3",count=4})
	table.insert(kit,{name="productivity-module-3",count=4})
	table.insert(kit,{name="effectivity-module-3",count=4})
elseif ADD_MODULES == "4x All" then
	table.insert(kit,{name="speed-module-3",count=16})
	table.insert(kit,{name="productivity-module-3",count=16})
	table.insert(kit,{name="effectivity-module-3",count=16})
end

--[[Start with bots]]--
if ADD_ROBOTS == "Basic" then
	if MODU_ROBO then --[[settings.global["bobmods-logistics-disableroboports"].value == true OR game.active_mods["boblogistics"]]--
		table.insert(kit,{name="bob-robochest",count=1})
		table.insert(kit,{name="bob-robo-charge-port",count=1})
		table.insert(kit,{name="bob-logistic-zone-interface",count=1})
		table.insert(kit,{name="bob-logistic-zone-expander",count=1})
	else
		table.insert(kit,{name="roboport",count=1})
	end
	table.insert(kit,{name="logistic-robot",count=10})
	table.insert(kit,{name="construction-robot",count=2})
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=3})
		table.insert(kit,{name="logistic-chest-storage",count=1})
		table.insert(kit,{name="logistic-chest-requester",count=3})
	end
elseif ADD_ROBOTS == "Lots" then
	if MODU_ROBO then
		table.insert(kit,{name="bob-robochest",count=1})
		table.insert(kit,{name="bob-robo-charge-port",count=2})
		table.insert(kit,{name="bob-logistic-zone-interface",count=1})
		table.insert(kit,{name="bob-logistic-zone-expander-2",count=1})
	else
		table.insert(kit,{name="roboport",count=1})
	end
	table.insert(kit,{name="logistic-robot",count=25})
	table.insert(kit,{name="construction-robot",count=5})
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=6})
		table.insert(kit,{name="logistic-chest-storage",count=3})
		table.insert(kit,{name="logistic-chest-requester",count=6})
	end
elseif ADD_ROBOTS == "Too Many" then
	if MODU_ROBO then
		table.insert(kit,{name="bob-robochest",count=1})
		table.insert(kit,{name="bob-robo-charge-port",count=3})
		table.insert(kit,{name="bob-logistic-zone-interface",count=1})
		table.insert(kit,{name="bob-logistic-zone-expander-3",count=2})
	else
		table.insert(kit,{name="roboport",count=2})
	end
	table.insert(kit,{name="logistic-robot",count=50})
	table.insert(kit,{name="construction-robot",count=10})
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=10})
		table.insert(kit,{name="logistic-chest-storage",count=5})
		table.insert(kit,{name="logistic-chest-requester",count=10})
	end
elseif ADD_ROBOTS == "Too Many ++" then
	if MODU_ROBO then
		table.insert(kit,{name="bob-robochest",count=2})
		table.insert(kit,{name="bob-robo-charge-port",count=4})
		table.insert(kit,{name="bob-robo-charge-port-large",count=1})
		table.insert(kit,{name="bob-logistic-zone-interface",count=1})
		table.insert(kit,{name="bob-logistic-zone-expander-4",count=2})
	else
		table.insert(kit,{name="roboport",count=4})
	end
	table.insert(kit,{name="logistic-robot",count=100})
	table.insert(kit,{name="construction-robot",count=20})
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=15})
		table.insert(kit,{name="logistic-chest-storage",count=10})
		table.insert(kit,{name="logistic-chest-requester",count=15})
		table.insert(kit,{name="logistic-chest-active-provider",count=5})
		table.insert(kit,{name="logistic-chest-buffer",count=5})
	end
end

--[[Add a car]]--
if ADD_CAR == "Car" then
	table.insert(kit,{name="car",count=1})
	table.insert(kit,{name="solid-fuel",count=5})
elseif ADD_CAR == "Tank" then
	table.insert(kit,{name="tank",count=1})
	table.insert(kit,{name="solid-fuel",count=5})
elseif ADD_CAR == "Train" then
	table.insert(kit,{name="locomotive",count=1})
	table.insert(kit,{name="cargo-wagon",count=2})
	table.insert(kit,{name="fluid-wagon",count=1})
	table.insert(kit,{name="solid-fuel",count=50})
	table.insert(kit,{name="rail",count=300})
	table.insert(kit,{name="train-stop",count=2})
	table.insert(kit,{name="rail-signal",count=20})
	table.insert(kit,{name="rail-chain-signal",count=20})
end

if PERFECTIONIST > 0 then
	table.insert(kit,{name="landfill",count=PERFECTIONIST})
end

-- MODS
if settings.startup["start-with-vehicle-miner"].value == true then
	table.insert(kit,{name="vehicle-miner",count=1})
end

if settings.startup["start-with-unit-remote-control"].value == true then
	table.insert(kit,{name="unit-remote-control",count=1})
end

-- Now lets get the player that just joined, and clear all of his inventory to replace with ours.
script.on_event(defines.events.on_player_created,function(param)
	local p=game.players[param.player_index]
	
	if START_EQUIP ~= "" then
		local items = split(START_EQUIP,",")
		for no, item_str in pairs(items) do
			local info = split(item_str,":")
			if game.item_prototypes[info[1]] then
				table.insert(kit, {name=info[1],count=tonumber(info[2])})
			end
		end
	end

	--[[if START_TECH == "everything" then
		--p.force.research_all_technologies()
	elseif ~= "" then
		local techs = split(START_TECH,",")
		for no, tech_str in pairs(techs) do
			--p.force.technology[techs].enabled=true
		end
	end]]--

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