local blocknames = {"minecraft", "ic2"}
local blockdata = {"gold_ore0", "iron_ore0", "coal_ore0", "lapis_ore0", "diamond_ore0", "redstone_ore0", "emerald_ore0", "resource1", "resource2", "resource3", "resource4", }

function dig()
	turtle.dig()
end


if turtle.detect() then
	dig()
	print("worked")
else
	print("fuck")
end