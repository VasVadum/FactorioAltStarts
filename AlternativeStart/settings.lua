--[[
	Settings
	They are all runtime global because server sync
]]--

data:extend({
    {
		-- Base game or electric start
        type = "bool-setting",
        name = "basic-kit-base",
		localised_name = "Base or Electric",
		localised_description = "Choose whether you spawn with a burner drill and stone furnace, or electric drill, power pole, and stone furnace.",
        setting_type = "runtime-global",
        default_value = true,
		order = 1
    },
    {
		-- Steam or Solar start
        type = "bool-setting",
        name = "basic-kit-steam",
		localised_name = "Steam or Solar",
		localised_description = "Choose whether to start with steam power or solar power.",
        setting_type = "runtime-global",
        default_value = true,
		order = 2
    },
    {
		-- Easy start boost
        type = "bool-setting",
        name = "basic-kit-easy",
		localised_name = "Easy start",
		localised_description = "Add additional iron and copper plates to the inventory, as well as a lab and some science packs and 3 assemblers to start with.",
        setting_type = "runtime-global",
        default_value = false,
		order = 3
    },
    {
		-- Start with bots
        type = "bool-setting",
        name = "basic-kit-robot",
		localised_name = "Robots",
		localised_description = "Would you like o start with a robo port, 50 logistic bots, 10 construction bots, 4 passive provider chests, 4 storage chests, and 4 requestor chests?",
        setting_type = "runtime-global",
        default_value = false,
		order = 4
    },
    {
		-- Add a car
        type = "bool-setting",
        name = "basic-kit-car",
		localised_name = "Rich Guy!",
		localised_description = "So, did you decide to bring your car with you to this new world? (Start with a car and some fuel)",
        setting_type = "runtime-global",
        default_value = false,
		order = 5
    },
    {
		-- Start with landfill
        type = "bool-setting",
        name = "basic-kit-perfectionist",
		localised_name = "Perfectionist",
		localised_description = "Are you a man who dislikes water where you don't want it? Did you decide to bring some landfill with you to handle messy water ways? (Start with 100 landfill)",
        setting_type = "runtime-global",
        default_value = false,
		order = 6
    },
    {
		-- Useless money
        type = "bool-setting",
        name = "basic-kit-money",
		localised_name = "Bring Money",
		localised_description = "So, you're so paranoid that you actually decided to bring your money with you even though its useless here!",
        setting_type = "runtime-global",
        default_value = false,
		order = 7
    }
})
