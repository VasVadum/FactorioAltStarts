--[[
	Code proudly stolen from AyrA!
	Then tweaked to make my own little thing here. ~Vas
	If you use this, please make sure to mention us somewhere like in your readme.  "Code proudly stolen from Vas which was proudly stolen from AyrA!" xP
]]--

-- User Settings
local BASE_KIT=			settings.global["basic-kit-base"].value
local EQUIPME=			settings.global["basic-kit-equipment"].value
local POWER_KIT=		settings.global["basic-kit-power"].value
local MORE_SUBS=		settings.global["basic-kit-moresubs"].value
local ADD_EASY=			settings.global["basic-kit-easy"].value
local ADD_ROBOTS=		settings.global["basic-kit-robot"].value
local ADD_ROCHEST=		settings.global["basic-kit-robotchests"].value
local ADD_CAR=			settings.global["basic-kit-car"].value
local PERFECTIONIST=	settings.global["basic-kit-perfectionist"].value
local ADD_MONEY=		settings.global["basic-kit-money"].value

--Start the kit table.
local kit={
	{name="iron-plate",count=4},
	{name="iron-axe",count=1}
}

-- Add stuff to inventory depending on the settings
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
elseif BASE_KIT == "Shamefully Easy Electric" then
	table.insert(kit,{name="electric-mining-drill",count=4})
	table.insert(kit,{name="medium-electric-pole",count=20})
	table.insert(kit,{name="stone-furnace",count=6})
else
	table.insert(kit,{name="burner-mining-drill",count=1})
	table.insert(kit,{name="stone-furnace",count=1})
end

-- Equip the player with weapons and ammo, eventually I will even disable research for handheld weapons once I figure out how for an "else" version.
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

if ADD_EASY == "Extra Resources" then
	table.insert(kit,{name="iron-plate",count=46})
	table.insert(kit,{name="copper-plate",count=50})
elseif ADD_EASY == "Power Armor & Modules" then
	table.insert(kit,{name="modular-armor",count=1})
	table.insert(kit,{name="energy-shield-equipment",count=1})
	table.insert(kit,{name="night-vision-equipment",count=1})
	table.insert(kit,{name="battery-equipment",count=1})
	table.insert(kit,{name="solar-panel-equipment",count=7})
	table.insert(kit,{name="exoskeleton-equipment",count=1})
elseif ADD_EASY == "Research Equipment" then
	table.insert(kit,{name="lab",count=1})
	table.insert(kit,{name="science-pack-1",count=50})
	table.insert(kit,{name="science-pack-2",count=50})
elseif ADD_EASY == "Power Armor, Modules, & Resources" then
	table.insert(kit,{name="iron-plate",count=46})
	table.insert(kit,{name="copper-plate",count=50})
	table.insert(kit,{name="modular-armor",count=1})
	table.insert(kit,{name="energy-shield-equipment",count=1})
	table.insert(kit,{name="night-vision-equipment",count=1})
	table.insert(kit,{name="battery-equipment",count=1})
	table.insert(kit,{name="solar-panel-equipment",count=7})
	table.insert(kit,{name="exoskeleton-equipment",count=1})
elseif ADD_EASY == "Ultimate Easy Start" then
	table.insert(kit,{name="iron-plate",count=46})
	table.insert(kit,{name="copper-plate",count=50})
	table.insert(kit,{name="modular-armor",count=1})
	table.insert(kit,{name="energy-shield-equipment",count=1})
	table.insert(kit,{name="night-vision-equipment",count=1})
	table.insert(kit,{name="battery-equipment",count=1})
	table.insert(kit,{name="solar-panel-equipment",count=7})
	table.insert(kit,{name="exoskeleton-equipment",count=1})
	table.insert(kit,{name="lab",count=1})
	table.insert(kit,{name="science-pack-1",count=50})
	table.insert(kit,{name="science-pack-2",count=50})
end

if ADD_ROBOTS == "Basic" then
	table.insert(kit,{name="roboport",count=1})
	table.insert(kit,{name="logistic-robot",count=10})
	table.insert(kit,{name="construction-robot",count=2})
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=3})
		table.insert(kit,{name="logistic-chest-storage",count=1})
		table.insert(kit,{name="logistic-chest-requester",count=3})
	end
elseif ADD_ROBOTS == "Lots" then
	table.insert(kit,{name="roboport",count=1})
	table.insert(kit,{name="logistic-robot",count=25})
	table.insert(kit,{name="construction-robot",count=5})
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=6})
		table.insert(kit,{name="logistic-chest-storage",count=3})
		table.insert(kit,{name="logistic-chest-requester",count=6})
	end
elseif ADD_ROBOTS == "Too Many" then
	table.insert(kit,{name="roboport",count=2})
	table.insert(kit,{name="logistic-robot",count=50})
	table.insert(kit,{name="construction-robot",count=10})
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=10})
		table.insert(kit,{name="logistic-chest-storage",count=5})
		table.insert(kit,{name="logistic-chest-requester",count=10})
	end
elseif ADD_ROBOTS == "Too Many ++" then
	table.insert(kit,{name="roboport",count=4})
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

if ADD_CAR == "Car" then
	table.insert(kit,{name="car",count=1})
	table.insert(kit,{name="solid-fuel",count=5})
elseif ADD_CAR == "Tank" then
	table.insert(kit,{name="tank",count=1})
	table.insert(kit,{name="solid-fuel",count=5})
elseif ADD_CAR == "Beta: Train" then
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

if ADD_MONEY then
	table.insert(kit,{name="coin",count=50})
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

	--Add items from the 'kit' table
	for i,v in pairs(kit) do
		p.insert(v)
	end
end)