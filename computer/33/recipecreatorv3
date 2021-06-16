-- UU Matter Recipe Creator

-- Reads user's input and stores it as a number type



-- Variable Initialization
local selectedgrids = 0
oldx = 1
oldy = 1
n = 0
grid = {}
for i = 1, 9 do
	grid[i] = 0
end
selection = 1
local w,h = term.getSize()

-- Asks the user which recipe they want to create
term.clear()
printCenter(math.floor(h/2) - 1, "Name for recipe: ")
local itemname = read()
local file = fs.open("/programs/data/recipes/" .. itemname, "w")

printCenter(math.floor(h/2) + 1, "Quantity crafted: ")
local rquantity = tonumber(read())

term.setCursorPos(1,1)
term.clear()
term.write("[X]")
term.setCursorPos(1,2)
term.write("Backspace")
-- PrintCenter Function
function printCenter (y,s)
  local x = math.floor((w - string.len(s)) /2)
  term.setCursorPos(x,y)
  term.clearLine()
  term.write(s)
end

-- Selection Grid
local startx = math.floor(((w - 9) /2))
local starty = math.floor(h/2) - 1
term.setCursorPos(startx,starty)

-- Update Grid Function
local function updateGrid()
	term.setCursorPos(startx,starty)
	for i = 1, 3 do
		if selection == i and grid[i] == 1 then
			term.write ("(O)")
		elseif selection == i then
			term.write ("( )")
		elseif grid[i] == 1 then
			term.write ("[O]")
		else
			term.write ("[ ]")
		end
	end
	oldx, oldy = term.getCursorPos()
	term.setCursorPos(startx, oldy+1)
	for i = 4, 6 do
		if selection == i and grid[i] == 1 then
			term.write ("(O)")
		elseif selection == i then
			term.write ("( )")
		elseif grid[i] == 1 then
			term.write ("[O]")
		else
			term.write ("[ ]")
		end
	end
	oldx, oldy = term.getCursorPos()
	term.setCursorPos(startx, oldy+1)
	for i = 7, 9 do
		if selection == i and grid[i] == 1 then
			term.write ("(O)")
		elseif selection == i then
			term.write ("( )")
		elseif grid[i] == 1 then
			term.write ("[O]")
		else
			term.write ("[ ]")
		end
	end
end

updateGrid()
-- Loop to update grid when user presses arrow keys
while true do
  local event, key, isHeld = os.pullEvent("key")
    if (keys.getName(key))=="left" or (keys.getName(key))=="a" then
		if selection ~= 1 and selection ~= 4 and selection ~= 7 then
			selection = selection - 1
		end
    elseif (keys.getName(key))=="right" or (keys.getName(key))=="d" then
		if selection ~= 3 and selection ~= 6 and selection ~= 9 then
			selection = selection + 1
		end
    elseif (keys.getName(key))=="up" or (keys.getName(key))=="w" then
		if selection ~= 1 and selection ~= 2 and selection ~= 3 then
			selection = selection - 3
		end
    elseif (keys.getName(key))=="down" or (keys.getName(key))=="s" then
		if selection ~= 7 and selection ~= 8 and selection ~= 9 then
			selection = selection + 3
		end
	elseif (keys.getName(key))=="space" then
		if selection == 1 and grid[1] == 0 then
			grid[1] = 1
		elseif selection == 1 and grid[1] == 1 then
			grid[1] = 0
		end
		if selection == 2 and grid[2] == 0 then
			grid[2] = 1
		elseif selection == 2 and grid[2] == 1 then
			grid[2] = 0
		end
		if selection == 3 and grid[3] == 0 then
			grid[3] = 1
		elseif selection == 3 and grid[3] == 1 then
			grid[3] = 0
		end
		if selection == 4 and grid[4] == 0 then
			grid[4] = 1
		elseif selection == 4 and grid[4] == 1 then
			grid[4] = 0
		end
		if selection == 5 and grid[5] == 0 then
			grid[5] = 1
		elseif selection == 5 and grid[5] == 1 then
			grid[5] = 0
		end
		if selection == 6 and grid[6] == 0 then
			grid[6] = 1
		elseif selection == 6 and grid[6] == 1 then
			grid[6] = 0
		end
		if selection == 7 and grid[7] == 0 then
			grid[7] = 1
		elseif selection == 7 and grid[7] == 1 then
			grid[7] = 0
		end
		if selection == 8 and grid[8] == 0 then
			grid[8] = 1
		elseif selection == 8 and grid[8] == 1 then
			grid[8] = 0
		end
		if selection == 9 and grid[9] == 0 then
			grid[9] = 1
		elseif selection == 9 and grid[9] == 1 then
			grid[9] = 0
		end
    elseif (keys.getName(key))=="enter" then
		term.setCursorPos(1,1)
		term.clear()
	break
    elseif (keys.getName(key))=="backspace" then
		term.setCursorPos(1,1)
		term.clear()
	break
    end
	updateGrid()
end

file.writeLine("---Crafting---")
file.writeLine("local function craftitem()")
file.writeLine("	turtle.select(16)")
file.writeLine("	turtle.craft()")
file.writeLine("	turtle.drop()")
file.writeLine("end")
file.writeLine("local item = \"" .. itemname .. "\"")
file.writeLine("quantity = " .. rquantity)
file.writeLine("maxcraft = quantity * 64")
-- Checks the number of selected grids
for i = 1, 9 do
	if grid[i] == 1 then selectedgrids = selectedgrids + 1 end
end
file.writeLine("uuquantity = " .. selectedgrids) -- Outputs the number of selected grids to be used as the UU quantity
file.writeLine("maxuu = uuquantity * 64\n") -- UU matter used to make the maximum possible amount
file.writeLine("print(\"How many \".. item .. \" do you want to make?\")") 
file.writeLine("print(\"Max: \" .. maxcraft .. \" \" .. item .. \", using \" .. maxuu .. \" UU\")\n")
file.writeLine("local input = tonumber( read())")
file.writeLine("output = input/quantity") -- How many UU matter will be placed in each slot
file.writeLine("local i = 1")

for i = 1, 9 do
	if i == 1 then n = 1 end
	if i == 2 then n = 2 end
	if i == 3 then n = 3 end
	if i == 4 then n = 5 end
	if i == 5 then n = 6 end
	if i == 6 then n = 7 end
	if i == 7 then n = 9 end
	if i == 8 then n = 10 end
	if i == 9 then n = 11 end
	if grid[i] == 1 then
		file.write("turtle.select(" .. n .. ")\n")
		file.write("while turtle.getItemCount(" .. n .. ") < output do turtle.suck() end\n")
		file.writeLine("if turtle.getItemCount(" .. n .. ") > output then turtle.drop(turtle.getItemCount(" .. n .. ")-output) end")
	else
		file.write("turtle.select(" .. n .. ")\n")
		file.writeLine("turtle.drop()")
	end
end

file.writeLine("-- Scans borders and drops contents, then crafts item and drops into chest")
file.writeLine("turtle.select(4)")
file.writeLine("turtle.drop()")
file.writeLine("turtle.select(8)")
file.writeLine("turtle.drop()")
file.writeLine("turtle.select(12)")
file.writeLine("turtle.drop()")
file.writeLine("turtle.select(13)")
file.writeLine("turtle.drop()")
file.writeLine("turtle.select(14)")
file.writeLine("turtle.drop()")
file.writeLine("turtle.select(15)")
file.writeLine("turtle.drop()")
file.writeLine("turtle.select(16)")
file.writeLine("turtle.drop()")
file.writeLine("turtle.turnRight()")
file.writeLine("turtle.turnRight()")
file.writeLine("craftitem()\n")
file.writeLine("--Scan for excess UU Matter and continue crafting if necessary")
file.writeLine("while true do")
file.writeLine("	turtle.select(1)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	turtle.select(2)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	turtle.select(3)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	turtle.select(5)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	turtle.select(6)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	turtle.select(7)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	turtle.select(9)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	turtle.select(10)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	turtle.select(11)")
file.writeLine("	if turtle.getItemCount ~= 0 then craftitem() end")
file.writeLine("	break")
file.writeLine("end")
file.writeLine("	turtle.turnRight()")
file.writeLine("	turtle.turnRight()")

file.close()