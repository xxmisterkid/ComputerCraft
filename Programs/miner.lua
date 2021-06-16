local i = 3
local file = fs.open("/programs/miner/reverse", "w")
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
print("This should display")