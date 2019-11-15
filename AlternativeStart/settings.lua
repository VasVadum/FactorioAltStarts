--[[
	Settings
	They are all runtime global because server sync
]]--

data:extend({
	{
		-- Choose what type of mining equipment you start with.
		type = "string-setting",
		name = "basic-kit-base",
		localised_name = "Choose Mining Equipment",
		localised_description = "You can choose from base game, electric, 2x electric, or 4x electric.",
		setting_type = "runtime-global",
		default_value = "Base",
		allowed_values = {"None","Base","Electric","Easy Electric","Mega Electric","Epic Electric"},
		order = "a-a"
	},
	{
		-- Choose what type of military equipment you start with.
		type = "string-setting",
		name = "basic-kit-equipment",
		localised_name = "Choose your combat starting gear",
		localised_description = "You can choose your combat equipment here.",
		setting_type = "runtime-global",
		default_value = "Civilian",
		allowed_values = {"None","Civilian","Soldier","Rambo"},
		order = "b-a"
	},
	{
		-- Steam or Solar start
		type = "string-setting",
		name = "basic-kit-power",
		localised_name = "Choose your starting power methods",
		localised_description = "Choose whether to start with steam power or solar power or even improved solar.",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {"None","Steam","Solar","Super Solar","Insane Solar"},
		order = "c-a"
	},
	{
		-- 4x the substations
		type = "bool-setting",
		name = "basic-kit-moresubs",
		localised_name = "More Substations?",
		localised_description = "Should we multiply the amount of substations you get by 4? (Only works with options that give substations)",
		setting_type = "runtime-global",
		default_value = false,
		order = "d-a"
	},
	{
		-- Easy start boost
		type = "string-setting",
		name = "basic-kit-easy",
		localised_name = "Easier Start",
		localised_description = "Choose which type of easy start you will get.",
		setting_type = "runtime-global",
		default_value = "Nope",
		allowed_values = {"Nope","Resources","Power Armor","Research Equipment","Power Armor & Resources","All"},
		order = "e-a"
	},
	{
		-- Modules
		type = "string-setting",
		name = "basic-kit-module",
		localised_name = "Do you wish to bring some modules?",
		localised_description = "Choose which type of modules you brought with you. The options are fairly obvious.",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {"None","Speed","Productivity","Energy Efficiency","All","4x All"},
		order = "e-a"
	},
	{
		-- Start with bots
		type = "string-setting",
		name = "basic-kit-robot",
		localised_name = "Robots",
		localised_description = "Would you like to start with bots?",
		setting_type = "runtime-global",
		default_value = "Nope",
		allowed_values = {"Nope","Basic","Lots","Too Many","Too Many ++"},
		order = "f-a"
	},
	{
		-- Switch robo ports to modular
		type = "bool-setting",
		name = "basic-kit-modularrobots",
		localised_name = "Modular Robot Ports?",
		localised_description = "Would you like to have modular robot ports rather than the standard robo port?",
		setting_type = "runtime-global",
		default_value = false,
		order = "f-b"
	},
	{
		-- Add chests with your robots
		type = "bool-setting",
		name = "basic-kit-robotchests",
		localised_name = "Logistic Chests?",
		localised_description = "Would you like to add robot logistical chests to your robot selection?",
		setting_type = "runtime-global",
		default_value = false,
		order = "f-c"
	},
	{
		-- Add a car
		type = "string-setting",
		name = "basic-kit-car",
		localised_name = "Choose a starting vehicle.",
		localised_description = "Each vehicle also comes with a little bit of solid fuel. Train option is currently beta, please let me know if I should alter it any.",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {"None","Car","Tank","Train"},
		order = "h-a"
	},
	{
		-- Start with landfill
		type = "int-setting",
		name = "basic-kit-perfectionist",
		localised_name = "Perfectionist",
		localised_description = "Are you a man who dislikes water where you don't want it? Did you decide to bring some landfill with you to handle messy water ways? If so, how much did you bring? (1000 is the max)",
		setting_type = "runtime-global",
		default_value = 0,
		maximum_value = 1000,
		minimum_value = 0,
		order = "i-a"
	},
	{
		-- Choose the exact equipment you wish to start with.
		type = "string-setting",
		name = "basic-kit-start-string",
		localised_name = "Choose Extra Equipment",
		localised_description = "Here, you can choose the equipment you would like to start with separating them out with commas and giving an amount you wish to have. Referrer to the example given in default value. You can also get some preset values from the mod's upload page.",
		setting_type = "runtime-global",
		allow_blank = true,
		default_value = "iron-plate:4,iron-axe:1,burner-mining-drill:1,stone-furnace:1,pistol:1,firearm-magazine:10",
		order = "k-a"
	},
	{
		-- Choose the exact research you wish to start with.
		type = "string-setting",
		name = "basic-kit-start-research-string",
		localised_name = "Choose Starting Technologies",
		localised_description = "Here you will choose the technology you start with, separating each one with a comma. It is possible to start with a technology without its pre-reqs.",
		setting_type = "runtime-global",
		allow_blank = true,
		default_value = "DOES NOT WORK YET",
		order = "k-b"
	},
	{
		-- Choose the exact equipment you wish to disable.
		type = "string-setting",
		name = "basic-kit-disable-equipment-string",
		localised_name = "Disable Specific Items",
		localised_description = "Here, you can disable specific items like the burner inserter, or other recipes so that they can't be made and won't show up.",
		setting_type = "runtime-global",
		allow_blank = true,
		default_value = "DOES NOT WORK YET",
		order = "k-c"
	},
	{
		-- Choose the exact research you wish to disable.
		type = "string-setting",
		name = "basic-kit-disable-research-string",
		localised_name = "Disable Specific Technologies",
		localised_description = "Here, you can disable specific technologies so that they can't be unlocked, and won't show up.",
		setting_type = "runtime-global",
		allow_blank = true,
		default_value = "DOES NOT WORK YET",
		order = "k-d"
	}
})

--[[data:extend({
	{
		-- Choose what type of mining equipment you start with.
		type = "string-setting",
		name = "basic-kit-base",
		localised_name = "Choose Mining Equipment",
		localised_description = "You can choose from base game, electric, 2x electric, or 4x electric.",
		setting_type = "runtime-global",
		default_value = "Base",
		allowed_values = {"Base","Electric","Easy Electric","Mega Electric","Epic Electric"},
		order = "a-a"
	},
	{
		-- Choose what type of military equipment you start with.
		type = "string-setting",
		name = "basic-kit-equipment",
		localised_name = "Choose your combat starting gear",
		localised_description = "You can choose your combat equipment here.",
		setting_type = "runtime-global",
		default_value = "Civilian",
		allowed_values = {"None","Civilian","Soldier","Rambo"},
		order = "b-a"
	},
	{
		-- Steam or Solar start
		type = "string-setting",
		name = "basic-kit-power",
		localised_name = "Choose your starting power methods",
		localised_description = "Choose whether to start with steam power or solar power or even improved solar.",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {"None","Steam","Solar","Super Solar","Insane Solar"},
		order = "c-a"
	},
	{
		-- 4x the substations
		type = "bool-setting",
		name = "basic-kit-moresubs",
		localised_name = "More Substations?",
		localised_description = "Should we multiply the amount of substations you get by 4? (Only works with options that give substations)",
		setting_type = "runtime-global",
		default_value = false,
		order = "d-a"
	},
	{
		-- Easy start boost
		type = "string-setting",
		name = "basic-kit-easy",
		localised_name = "Easier Start",
		localised_description = "Choose which type of easy start you will get.",
		setting_type = "runtime-global",
		default_value = "Nope",
		allowed_values = {"Nope","Resources","Power Armor","Research Equipment","Power Armor & Resources","All"},
		order = "e-a"
	},
	{
		-- Modules
		type = "string-setting",
		name = "basic-kit-module",
		localised_name = "Do you wish to bring some modules?",
		localised_description = "Choose which type of modules you brought with you. The options are fairly obvious.",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {"None","Speed","Productivity","Energy Efficiency","All","4x All"},
		order = "e-a"
	},
	{
		-- Start with bots
		type = "string-setting",
		name = "basic-kit-robot",
		localised_name = "Robots",
		localised_description = "Would you like to start with bots?",
		setting_type = "runtime-global",
		default_value = "Nope",
		allowed_values = {"Nope","Basic","Lots","Too Many","Too Many ++"},
		order = "f-a"
	},
	{
		-- Add chests with your robots
		type = "bool-setting",
		name = "basic-kit-robotchests",
		localised_name = "Logistic Chests?",
		localised_description = "Would you like to add robot logistical chests to your robot selection?",
		setting_type = "runtime-global",
		default_value = false,
		order = "g-a"
	},
	{
		-- Add a car
		type = "string-setting",
		name = "basic-kit-car",
		localised_name = "Choose a starting vehicle.",
		localised_description = "Each vehicle also comes with a little bit of solid fuel. Train option is currently beta, please let me know if I should alter it any.",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {"None","Car","Tank","Train"},
		order = "h-a"
	},
	{
		-- Start with landfill
		type = "int-setting",
		name = "basic-kit-perfectionist",
		localised_name = "Perfectionist",
		localised_description = "Are you a man who dislikes water where you don't want it? Did you decide to bring some landfill with you to handle messy water ways? If so, how much did you bring? (1000 is the max)",
		setting_type = "runtime-global",
		default_value = 0,
		maximum_value = 1000,
		minimum_value = 0,
		order = "i-a"
	}
})]]--