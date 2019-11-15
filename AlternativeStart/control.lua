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
local ADD_MODULES=		settings.global["basic-kit-module"].value
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
local MY_MONEY = 50
-- Add stuff to inventory depending on the settings
--[[if ADD_YOUR_OWN then
	
else
end]]--

if BASE_KIT == "Base" then
	table.insert(kit,{name="burner-mining-drill",count=1})
	table.insert(kit,{name="stone-furnace",count=1})
	MY_MONEY = MY_MONEY + 50
elseif BASE_KIT == "Electric" then
	table.insert(kit,{name="electric-mining-drill",count=1})
	table.insert(kit,{name="medium-electric-pole",count=1})
	table.insert(kit,{name="stone-furnace",count=1})
	MY_MONEY = MY_MONEY +25
elseif BASE_KIT == "Easy Electric" then
	table.insert(kit,{name="electric-mining-drill",count=2})
	table.insert(kit,{name="medium-electric-pole",count=5})
	table.insert(kit,{name="stone-furnace",count=3})
	MY_MONEY = MY_MONEY + 5
elseif BASE_KIT == "Mega Electric" then
	table.insert(kit,{name="electric-mining-drill",count=4})
	table.insert(kit,{name="medium-electric-pole",count=20})
	table.insert(kit,{name="stone-furnace",count=6})
	MY_MONEY = MY_MONEY - 25
elseif BASE_KIT == "Epic Electric" then
	table.insert(kit,{name="electric-mining-drill",count=8})
	table.insert(kit,{name="electric-furnace",count=10})
	if MORE_SUBS then
		table.insert(kit,{name="substation",count=16})
	else
		table.insert(kit,{name="substation",count=4})
	end
	MY_MONEY = MY_MONEY - 60
else
	table.insert(kit,{name="burner-mining-drill",count=1})
	table.insert(kit,{name="stone-furnace",count=1})
	MY_MONEY = MY_MONEY + 50
end

-- Equip the player with weapons and ammo, eventually I will even disable research for handheld weapons once I figure out how for an "else" version.
if EQUIPME == "Civilian" then
	table.insert(kit,{name="pistol",count=1})
	table.insert(kit,{name="firearm-magazine",count=10})
	MY_MONEY = MY_MONEY + 65
elseif EQUIPME == "Soldier" then
	table.insert(kit,{name="submachine-gun",count=1})
	table.insert(kit,{name="shotgun",count=1})
	table.insert(kit,{name="piercing-rounds-magazine",count=20})
	table.insert(kit,{name="piercing-shotgun-shell",count=20})
	MY_MONEY = MY_MONEY + 10
elseif EQUIPME == "Rambo" then
	table.insert(kit,{name="submachine-gun",count=1})
	table.insert(kit,{name="flamethrower",count=1})
	table.insert(kit,{name="combat-shotgun",count=1})
	table.insert(kit,{name="uranium-rounds-magazine",count=100})
	table.insert(kit,{name="flamethrower-ammo",count=50})
	table.insert(kit,{name="piercing-shotgun-shell",count=50})
	MY_MONEY = MY_MONEY - 75
else
	MY_MONEY = MY_MONEY + 100
end

if POWER_KIT == "Steam" then
	table.insert(kit,{name="offshore-pump",count=1})
	table.insert(kit,{name="boiler",count=1})
	table.insert(kit,{name="pipe",count=10})
	table.insert(kit,{name="steam-engine",count=1})
	MY_MONEY = MY_MONEY + 15
elseif POWER_KIT == "Solar" then
	table.insert(kit,{name="solar-panel",count=6})
	table.insert(kit,{name="accumulator",count=3})
	if MORE_SUBS then
		table.insert(kit,{name="substation",count=8})
	else
		table.insert(kit,{name="substation",count=2})
	end
	MY_MONEY = MY_MONEY - 5
elseif POWER_KIT == "Super Solar" then
	table.insert(kit,{name="solar-panel",count=12})
	table.insert(kit,{name="accumulator",count=6})
	if MORE_SUBS then
		table.insert(kit,{name="substation",count=16})
	else
		table.insert(kit,{name="substation",count=4})
	end
	MY_MONEY = MY_MONEY - 20
elseif POWER_KIT == "Insane Solar" then
	table.insert(kit,{name="solar-panel",count=24})
	table.insert(kit,{name="accumulator",count=12})
	if MORE_SUBS then
		table.insert(kit,{name="substation",count=32})
	else
		table.insert(kit,{name="substation",count=8})
	end
	MY_MONEY = MY_MONEY - 60
else
	MY_MONEY = MY_MONEY + 100
end

if ADD_EASY == "Resources" then
	table.insert(kit,{name="iron-plate",count=46})
	table.insert(kit,{name="copper-plate",count=50})
	MY_MONEY = MY_MONEY - 10
elseif ADD_EASY == "Power Armor" then
	table.insert(kit,{name="modular-armor",count=1})
	table.insert(kit,{name="energy-shield-equipment",count=1})
	table.insert(kit,{name="night-vision-equipment",count=1})
	table.insert(kit,{name="battery-equipment",count=1})
	table.insert(kit,{name="solar-panel-equipment",count=7})
	table.insert(kit,{name="exoskeleton-equipment",count=1})
	MY_MONEY = MY_MONEY - 20
elseif ADD_EASY == "Research Equipment" then
	table.insert(kit,{name="lab",count=1})
	table.insert(kit,{name="science-pack-1",count=50})
	table.insert(kit,{name="science-pack-2",count=50})
	table.insert(kit,{name="science-pack-3",count=50})
	MY_MONEY = MY_MONEY - 40
elseif ADD_EASY == "Power Armor & Resources" then
	table.insert(kit,{name="iron-plate",count=46})
	table.insert(kit,{name="copper-plate",count=50})
	table.insert(kit,{name="modular-armor",count=1})
	table.insert(kit,{name="energy-shield-equipment",count=1})
	table.insert(kit,{name="night-vision-equipment",count=1})
	table.insert(kit,{name="battery-equipment",count=1})
	table.insert(kit,{name="solar-panel-equipment",count=7})
	table.insert(kit,{name="exoskeleton-equipment",count=1})
	MY_MONEY = MY_MONEY - 30
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
	table.insert(kit,{name="science-pack-1",count=50})
	table.insert(kit,{name="science-pack-2",count=50})
	table.insert(kit,{name="science-pack-3",count=50})
	MY_MONEY = MY_MONEY - 70
end

if ADD_MODULES == "Speed" then
	table.insert(kit,{name="speed-module-3",count=4})
	MY_MONEY = MY_MONEY - 10
elseif ADD_MODULES == "Productivity" then
	table.insert(kit,{name="productivity-module-3",count=4})
	MY_MONEY = MY_MONEY - 10
elseif ADD_MODULES == "Energy Efficiency" then
	table.insert(kit,{name="effectivity-module-3",count=4})
	MY_MONEY = MY_MONEY - 10
elseif ADD_MODULES == "All" then
	table.insert(kit,{name="speed-module-3",count=4})
	table.insert(kit,{name="productivity-module-3",count=4})
	table.insert(kit,{name="effectivity-module-3",count=4})
	MY_MONEY = MY_MONEY - 30
elseif ADD_MODULES == "4x All" then
	table.insert(kit,{name="speed-module-3",count=16})
	table.insert(kit,{name="productivity-module-3",count=16})
	table.insert(kit,{name="effectivity-module-3",count=16})
	MY_MONEY = MY_MONEY - 120
else
	MY_MONEY = MY_MONEY + 40
end

if ADD_ROBOTS == "Basic" then
	table.insert(kit,{name="roboport",count=1})
	table.insert(kit,{name="logistic-robot",count=10})
	table.insert(kit,{name="construction-robot",count=2})
	MY_MONEY = MY_MONEY - 20
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=3})
		table.insert(kit,{name="logistic-chest-storage",count=1})
		table.insert(kit,{name="logistic-chest-requester",count=3})
	MY_MONEY = MY_MONEY - 10
	end
elseif ADD_ROBOTS == "Lots" then
	table.insert(kit,{name="roboport",count=1})
	table.insert(kit,{name="logistic-robot",count=25})
	table.insert(kit,{name="construction-robot",count=5})
	MY_MONEY = MY_MONEY - 35
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=6})
		table.insert(kit,{name="logistic-chest-storage",count=3})
		table.insert(kit,{name="logistic-chest-requester",count=6})
	MY_MONEY = MY_MONEY - 20
	end
elseif ADD_ROBOTS == "Too Many" then
	table.insert(kit,{name="roboport",count=2})
	table.insert(kit,{name="logistic-robot",count=50})
	table.insert(kit,{name="construction-robot",count=10})
	MY_MONEY = MY_MONEY - 60
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=10})
		table.insert(kit,{name="logistic-chest-storage",count=5})
		table.insert(kit,{name="logistic-chest-requester",count=10})
	MY_MONEY = MY_MONEY - 30
	end
elseif ADD_ROBOTS == "Too Many ++" then
	table.insert(kit,{name="roboport",count=4})
	table.insert(kit,{name="logistic-robot",count=100})
	table.insert(kit,{name="construction-robot",count=20})
	MY_MONEY = MY_MONEY - 100
	if ADD_ROCHEST then
		table.insert(kit,{name="logistic-chest-passive-provider",count=15})
		table.insert(kit,{name="logistic-chest-storage",count=10})
		table.insert(kit,{name="logistic-chest-requester",count=15})
		table.insert(kit,{name="logistic-chest-active-provider",count=5})
		table.insert(kit,{name="logistic-chest-buffer",count=5})
	MY_MONEY = MY_MONEY - 45
	end
end

if ADD_CAR == "Car" then
	table.insert(kit,{name="car",count=1})
	table.insert(kit,{name="solid-fuel",count=5})
	MY_MONEY = MY_MONEY - 5
elseif ADD_CAR == "Tank" then
	table.insert(kit,{name="tank",count=1})
	table.insert(kit,{name="solid-fuel",count=5})
	MY_MONEY = MY_MONEY - 20
elseif ADD_CAR == "Train" then
	table.insert(kit,{name="locomotive",count=1})
	table.insert(kit,{name="cargo-wagon",count=2})
	table.insert(kit,{name="fluid-wagon",count=1})
	table.insert(kit,{name="solid-fuel",count=50})
	table.insert(kit,{name="rail",count=300})
	table.insert(kit,{name="train-stop",count=2})
	table.insert(kit,{name="rail-signal",count=20})
	table.insert(kit,{name="rail-chain-signal",count=20})
	MY_MONEY = MY_MONEY - 60
end

if PERFECTIONIST > 0 then
	table.insert(kit,{name="landfill",count=PERFECTIONIST})
	MY_MONEY = MY_MONEY - math.floor((PERFECTIONIST / 2))
end

if ADD_MONEY then
	if MY_MONEY >= 1 then
		table.insert(kit,{name="coin",count=MY_MONEY})
	end
end

-- Now lets get the player that just joined, and clear all of his inventory to replace with ours.
script.on_event(defines.events.on_player_created,function(param)
	local p=game.players[param.player_index]
	if MY_MONEY <= 0 then
		p.print("Sorry, your account balance is " .. MY_MONEY .. "FC, so we reposessed your house.")
		p.print("Your spouse left you too and in your absence took everything you had left, and is now dating your best friend.")
	end

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