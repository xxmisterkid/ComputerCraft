sides = { "top", "bottom", "left", "right", "front", "back" }

print("Finding Monitors")
for i = 1, #sides do
  mon = peripheral.wrap(sides[i])
  if mon then
    side = sides[i]
    break
  end
end

local w,h = term.getSize()

--Center Text Function--

function printCenter (y,s)
  local x = math.floor((w - string.len(s)) /2)
  term.setCursorPos(x,y)
  term.clearLine()
  term.write(s)
end

--Menu Functions--


local nOption = 1

local function menuGui()
  term.clear()
  term.setCursorPos(1,1)
  term.write("Bert's Menu 0.2")
end

--GUI--

term.clear()
local function drawFrontend()
  printCenter(math.floor(h/2) - 3, "")
  printCenter(math.floor(h/2) - 2, "Start Menu")
  printCenter(math.floor(h/2) - 1, "")
  printCenter(math.floor(h/2) + 0, ((nOption == 1) and "[ Terminal ]") or "Terminal" )
  printCenter(math.floor(h/2) + 1, ((nOption == 2) and "[ Program List ]") or "Program List" )
  printCenter(math.floor(h/2) + 2, ((nOption == 3) and "[ Reboot ]") or "Reboot" )
end

--Display--

menuGui()
drawFrontend()

while true do
  local event, key, isHeld = os.pullEvent("key")
    if (keys.getName(key))=="up" or (keys.getName(key))=="w" then
      if nOption > 1 then
        nOption = nOption - 1
        menuGui()
        drawFrontend()
      end
    elseif (keys.getName(key))=="down" or (keys.getName(key))=="s" then
      if nOption < 3 then
        nOption = nOption + 1
        menuGui()
        drawFrontend()
      end
      elseif (keys.getName(key))=="enter" then break
    end
end
term.clear()

--Conditions--
if nOption == 1 then
  shell.run("os/.terminal")
elseif nOption == 2 then
shell.run("/programs/programlist")
elseif nOption == 3 then
  os.reboot()
end
