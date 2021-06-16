local function printUsage()
  print("Usage:\nftpclient <ID>")
end
local arg1 = ...
if arg1 == nil then
  printUsage()
  return
end
-- Searches all sides for a wireless modem
local sModemSide
for i, sSide in ipairs(rs.getSides()) do
  if peripheral.getType(sSide) == "modem" then
    sModemSide = sSide
  break
  end
end
if sModemSide == nil then
  print("A wireless modem is required to run this program.")
  return
else
  rednet.open(sModemSide)
end
ID = tonumber(arg1)
local w, h = term.getSize()
function printCenter(text)
  local x, y = term.getCursorPos()
  x = math.max(math.floor((w/2) - (#text/2)), 0)
  term.setCursorPos(x,y)
  print(text)
end
term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
term.clear()
-- Function to redraw "x" on top right of screen
local function redrawX()
  paintutils.drawLine(1, 1, w-3, 1, colors.blue)
  term.setCursorPos(1,1)
  term.setTextColor(colors.white)
  term.write(" Droud's FTP Client")
  term.setTextColor(colors.black)
  paintutils.drawLine(w-2, 1, w, 1, colors.red)
  term.setCursorPos(w-1,1)
  term.write("x")
  term.setBackgroundColor(colors.white)
  term.setCursorPos(1,2)
end
-- Sends the inital "dir" command to the server
rednet.send(ID, "dir")
print("Retrieving directory...")
senderID, message = rednet.receive("ftp",3)
if message == nil then
  print("No message received for 3 seconds.")
  sleep(1)
  return
else 
  term.setCursorPos(1,2)
  term.clear()
  print(message)
end
redrawX()
while true do
  local event, button, x, y, z = os.pullEvent()
  if event == "mouse_click" then
  -- If the user clicks the "X" on the top right
  if x >= w-2 and y == 1 then
    term.setBackgroundColor(colors.black)
    term.setTextColor(colors.white)
    term.clear()
    term.setCursorPos(1,1)
    return
  end
-- Prints where the user clicked, for debugging
-- print("\nThe mouse button ", button, " was pressed at ", x, " and ", y)
  end
  if event == "char" then
    term.write(button)
  end
end
