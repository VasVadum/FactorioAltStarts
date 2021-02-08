--[[
	Settings
	They are all runtime global because server sync
]]--

data:extend({
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