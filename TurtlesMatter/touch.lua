
mon = peripheral.wrap("top")

local i = 0

while true do
   term.clear()
   
   local _, srollDirection, x, y = os.pullEvent("mouse_scroll")
   
   if scrollDirection == -1 then
      i = i + 1
   elseif scrollDirection == 1 then
      i = i - 1
   end
   
   term.setCursorPos(x, y)
   term.write(i)
end
	
while true do
  event, side, xPos, yPos = os.pullEvent("monitor_touch")
  print(event .. " => Side: " .. tostring(side) .. ", " ..
    "X: " .. tostring(xPos) .. ", " ..
    "Y: " .. tostring(yPos))
end