sides = { "top", "bottom", "left", "right", "front", "back" }

print("Finding Monitors")
for i = 1, #sides do
  mon = peripheral.wrap(sides[i])
  if mon then
    side = sides[i]
    break
  end
end

mon.clear()
mon.setCursorPos(1,1)
mon.setTextColor(colors.lime)

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
  printCenter(math.floor(h/2) - 2, "Programs")
  printCenter(math.floor(h/2) - 1, "")
  printCenter(math.floor(h/2) + 0, ((nOption == 1) and "[ Monitor Detect ]") or "Monitor Detect" )
  printCenter(math.floor(h/2) + 1, ((nOption == 2) and "[ Menu ]") or "Menu" )
  printCenter(math.floor(h/2) + 2, ((nOption == 3) and "[ Reboot ]") or "Reboot" )
end

--Display--

menuGui()
drawFrontend()

while true do
  local e,p = os.pullEvent()
  if e == "key" then
    local key = p
    if key == 17 or key == 200 then
    
      if nOption > 1 then
        nOption = nOption - 1
        menuGui()
        drawFrontend()
      end
    elseif key == 31 or key == 208 then
      if nOption < 3 then
        nOption = nOption + 1
        menuGui()
        drawFrontend()
      end
      elseif key == 28 then
      break
    end
  end
end
term.clear()

--Conditions--
if nOption == 1 then
  shell.run("os/programs/MonitorDetect")
elseif nOption == 2 then
  shell.run(".menu")
elseif nOption == 3 then
  os.reboot()
end
term.restore()
