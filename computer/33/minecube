-- variable initialization
local i = 3
local n = 0
local success, data
local blocknames = {"minecraft", "ic2"}
local blockdata = {"gold_ore0", "iron_ore0", "coal_ore0", "lapis_ore0", "diamond_ore0", "redstone_ore0", "emerald_ore0", "resource1", "resource2", "resource3", "resource4"}
print("Please input the desired width to dig in a square")
local width = read()
print("Please input the desired height to dig.")
local height = read()

for height = 1, height do
  n = width
  while n ~= 0 do
  	for i = 1, n do
    turtle.dig()
  		turtle.forward()
  	end
  	turtle.turnRight()
  	for i = 1, n do
  		turtle.forward()
  	end
  	turtle.turnRight()
  	n = n-1
  end
  if width % 2 == 0 then
  	for i = 1, width/2 do
  		turtle.back()
  	end
  		turtle.turnRight()
  	for i = 1, width/2 do
  		turtle.back()
  	end
  	turtle.turnLeft()
  else
  	turtle.turnLeft()
  	for i = 1, width/2+1 do
  		turtle.back()
  	end
  		turtle.turnLeft()
  	for i = 1, width/2+1 do
  		turtle.back()
  	end
  end
  turtle.digUp()
  turtle.up()
end
for i = 1, height do
  turtle.down()
end
