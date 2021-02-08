--[[
	Originally this mod was by Vas, who later requested Anoyomouse write some of the major functions to make things more efficient.
	If you use this, please make sure to mention us somewhere like in your readme.
]]--

-- User Settings
local START_EQUIP=			settings.global["basic-kit-start-string"].value
local START_TECH=			settings.global["basic-kit-start-research-string"].value
local DISASABLE_EQUIP=		settings.global["basic-kit-disable-equipment-string"].value
local DISABLE_TECH=			settings.global["basic-kit-disable-research-string"].value

--Start the kit table.
local kit={}

--Design a custom kit! THIS VERSION NEEDS TO BE REWRITTEN TO SUPPORT THE NEW KIT FORMAT!
if START_EQUIP ~= "" then
	local items = split(START_EQUIP,",")
	for no, item_str in pairs(items) do
		local info = split(item_str,":")
		if game.item_prototypes[info[1]] then
			table.insert(kit, {name=info[1],count=tonumber(info[2])})
		end
	end
end

-- Lets create a splitter function so we can split our additional strings properly.
local function split(inputstr, sep)
	if sep == nil then sep = "%s" end
	t={} i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do 
		t[i] = str
		i = i + 1
	end return t
end

--[[Anoyomouse's Kit Format
	kit["energy-shield-equipment"]=1
	kit["night-vision-equipment"]=1
	kit["battery-equipment"]=1]
]]--
--[[Vas's Kit Format
	table.insert(kit,{name="locomotive",count=1})
	table.insert(kit,{name="cargo-wagon",count=2})
	table.insert(kit,{name="fluid-wagon",count=1})
]]--

game.on_init(function(event)
	if remote.interfaces["freeplay"]["set_created_items"] then
		remote.call("freeplay", "set_created_items", kit);
	end
end);