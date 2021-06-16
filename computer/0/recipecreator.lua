-- UU Matter Recipe Creator

--[[ local input = tonumber( read())
	^ Reads user's input and stores it as a number type
--]]

-- Variable Initialization
local boxx = 1
local boxy = 1
local w,h = term.getSize()

-- PrintCenter Function
function printCenter (y,s)
  local x = math.floor((w - string.len(s)) /2)
  term.setCursorPos(x,y)
  term.clearLine()
  term.write(s)
end

-- Selection Grid
term.clear()

local function drawFrontend()
	printCenter(math.floor(h/2) - 1, "[ ][ ][ ]")
	printCenter(math.floor(h/2) + 0, "[ ][ ][ ]")
	printCenter(math.floor(h/2) + 1, "[ ][ ][ ]")
	if boxx == 1 and boxy == 1 then printCenter(math.floor(h/2) - 1, "( )[ ][ ]")
	elseif boxx == 2 and boxy == 1 then printCenter(math.floor(h/2) - 1, "[ ]( )[ ]")
	elseif boxx == 3 and boxy == 1 then printCenter(math.floor(h/2) - 1, "[ ][ ]( )")
	end
	if boxx == 1 and boxy == 2 then printCenter(math.floor(h/2) + 0, "( )[ ][ ]")
	elseif boxx == 2 and boxy == 2 then printCenter(math.floor(h/2) + 0, "[ ]( )[ ]")
	elseif boxx == 3 and boxy == 2 then printCenter(math.floor(h/2) + 0, "[ ][ ]( )")
	end
	if boxx == 1 and boxy == 3 then printCenter(math.floor(h/2) + 1, "( )[ ][ ]")
	elseif boxx == 2 and boxy == 3 then printCenter(math.floor(h/2) + 1, "[ ]( )[ ]")
	elseif boxx == 3 and boxy == 3 then printCenter(math.floor(h/2) + 1, "[ ][ ]( )")
	end
end
drawFrontend()

-- Loop to update grid when user presses arrow keys
while true do
  local event, key, isHeld = os.pullEvent("key")
    if (keys.getName(key))=="left" or (keys.getName(key))=="a" then
      if boxx > 1 then
        boxx = boxx - 1
        drawFrontend()
      end
    elseif (keys.getName(key))=="right" or (keys.getName(key))=="d" then
      if boxx < 3 then
        boxx = boxx + 1
        drawFrontend()
      end
    elseif (keys.getName(key))=="up" or (keys.getName(key))=="w" then
      if boxy > 1 then
        boxy = boxy - 1
        drawFrontend()
      end
    elseif (keys.getName(key))=="down" or (keys.getName(key))=="s" then
      if boxy < 3 then
        boxy = boxy + 1
        drawFrontend()
      end
      elseif (keys.getName(key))=="enter" then break
    end
end