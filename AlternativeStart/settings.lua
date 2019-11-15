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
		allowed_values = {"Base","Electric","Easy Electric","Shamefully Easy Electric"},
		order = 1
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
		order = 2
	},
	{
		-- Steam or Solar start
		type = "string-setting",
		name = "basic-kit-power",
		localised_name = "Choose your starting power methods",
		localised_description = "Choose whether to start with steam power or solar power or even improved solar.",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {"None","Steam","Solar","Super Solar"},
		order = 3
	},
	{
		-- Easy start boost
		type = "string-setting",
		name = "basic-kit-easy",
		localised_name = "Easier Start",
		localised_description = "Choose which type of easy start you will get.",
		setting_type = "runtime-global",
		default_value = "Nope",
		allowed_values = {"Nope","Extra Resources","Power Armor & Modules","Research Equipment","Power Armor, Modules, & Resources","Ultimate Easy Start"},
		order = 4
	},
	{
		-- Start with bots
		type = "string-setting",
		name = "basic-kit-robot",
		localised_name = "Robots",
		localised_description = "Would you like to start with bots?",
		setting_type = "runtime-global",
		default_value = "Nope",
		allowed_values = {"Nope","(pending)","Basic","Lots","Too Many","Too Many ++"},
		order = 5
	},
	{
		-- Add chests with your robots
		type = "bool-setting",
		name = "basic-kit-robotchests",
		localised_name = "Logistic Chests?",
		localised_description = "Would you like to add robot logistical chests to your robot selection?",
		setting_type = "runtime-global",
		default_value = false,
		order = 6
	},
	{
		-- Add a car
		type = "string-setting",
		name = "basic-kit-car",
		localised_name = "Choose a starting vehicle.",
		localised_description = "Each vehicle also comes with a little bit of solid fuel.",
		setting_type = "runtime-global",
		default_value = "None",
		allowed_values = {"None","Car","Tank","Pending"},
		order = 7
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
		order = 8
	},
	{
		-- Useless money
		type = "bool-setting",
		name = "basic-kit-money",
		localised_name = "Bring Money",
		localised_description = "So, you're so paranoid that you actually decided to bring your money with you even though its useless here!",
		setting_type = "runtime-global",
		default_value = false,
		order = 9
	}
})
