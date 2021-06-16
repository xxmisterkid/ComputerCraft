mon = peripheral.wrap("left")
term.redirect(peripheral.wrap("left"))
term.clear()
local c = 0
local s = 0
local r = 0
while true do
  if turtle.detectDown() then
    term.setCursorPos(1,1)
    turtle.digDown()
    turtle.drop()
    if turtle.suck() then
    s = s+1
    end
    turtle.dropUp()
    c=c+1
    r=c/s
    term.clear()
   	print("Cobble dugged: ".. c)
    print("Scraps maed: ".. s)
    if s ~= 0 then print("Created 1 scrap for every ".. math.floor(r) .. " cobble") end
    sleep(1.35)
  end
end
