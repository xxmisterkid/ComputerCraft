--mon = peripheral.wrap("left")
--term.redirect(peripheral.wrap("left"))
term.clear()
local c = 0
local s = 0
local r = 0
while true do
  if turtle.detectDown() then
    turtle.digDown()
    c = c+1
    turtle.drop()
    end
  if turtle.detectUp() then
    turtle.digUp()
    c = c+1
    turtle.drop()
  end
--[[ Sucks scraps from recycler
    if turtle.suck() then
      s = s+1
    end
--]]    turtle.dropUp()
--  r=c/s
  term.clear()
 	term.setCursorPos(1,1)
  print("Cobble dugged: ".. c)
--  print("Scraps maed: ".. s)
--  if s ~= 0 then print("Created 1 scrap for every ".. math.floor(r) .. " cobble") end
--  sleep(0.2)
--  end
end
--term.restore()
