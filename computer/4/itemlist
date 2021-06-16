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
  term.write("Turtle Lives Matter")
end

--GUI--

term.clear()
local function drawFrontend()
  printCenter(math.floor(h/2) - 3, "")
  printCenter(math.floor(h/2) - 2, "Item List")
  printCenter(math.floor(h/2) - 1, "")
  printCenter(math.floor(h/2) + 0, ((nOption == 1) and "[ UUMatter Recipes ]") or "Recipes" )
  printCenter(math.floor(h/2) + 1, ((nOption == 2) and "[ 2 ]") or "2" )
  printCenter(math.floor(h/2) + 2, ((nOption == 3) and "[ 3 ]") or "3" )
  printCenter(math.floor(h/2) + 3, ((nOption == 4) and "[ 4 ]") or "4" )
  printCenter(math.floor(h/2) + 4, ((nOption == 5) and "[ 5 ]") or "5" )
  printCenter(math.floor(h/2) + 5, ((nOption == 6) and "[ 6 ]") or "6" )
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
  shell.run("os/.terminal")
elseif nOption == 2 then
  shell.run("os/.programs")
elseif nOption == 3 then
  os.reboot()
elseif nOption == 4 then
  shell.run("os/.programs")
elseif nOption == 5 then
  os.reboot()
elseif nOption == 6 then
  os.reboot()
end
