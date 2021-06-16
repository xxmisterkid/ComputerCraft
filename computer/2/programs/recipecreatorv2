-- UU Matter Recipe Creator

--[[ local input = tonumber( read())
	^ Reads user's input and stores it as a number type
--]]

-- Variable Initialization
oldx = 1
oldy = 1
grid = {}
for i = 1, 9 do
	grid[i] = 0
end
selection = 1
local w,h = term.getSize()

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