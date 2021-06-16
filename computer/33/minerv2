-- variable initialization
local i = 3
local success, data
local blocknames = {"minecraft", "ic2"}
local blockdata = {"gold_ore0", "iron_ore0", "coal_ore0", "lapis_ore0", "diamond_ore0", "redstone_ore0", "emerald_ore0", "resource1", "resource2", "resource3", "resource4"}
local file = fs.open("/programs/miner/reverse", "w")
-- orecheck function
local function orecheck()
	if turtle.detect() then
		success, data = turtle.inspect()
		if success == blocknames[1] or blocknames[2] then
			if data == blockdata[1] or blockdata[2] or blockdata[3] or blockdata[4] or blockdata[5] or blockdata[6] or blockdata[7] or blockdata[8] or blockdata[9] or blockdata[10] or blockdata[11] then
				turtle.dig()
			end
		end
	end
end
-- movement functions to write to reverse file
local function forward()
	if turtle.forward() then
		file.writeLine("turtle.back()")
	end
end
local function left()
	if turtle.turnLeft() then
		file.writeLine("turtle.turnLeft()")
	end
end
local function right()
	if turtle.turnRight() then
		file.writeLine("turtle.turnRight()")
	end
end

for i = 1, i do
	forward()
	left()
	forward()
	right()
	forward()
end
file.close()
shell.run("/programs/miner/reverse")
if fs.exists("/programs/miner/reverse") then fs.delete("/programs/miner/reverse") end
print("This should display")