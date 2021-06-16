-- variable initialization
local success, data
local i = 3
local n = 0
local oldheight = 0
local chest = 0
local success, data
local blocknames = {"minecraft", "ic2"}
local blockdata = {"gold_ore0", "iron_ore0", "coal_ore0", "lapis_ore0", "diamond_ore0", "redstone_ore0", "emerald_ore0", "resource1", "resource2", "resource3", "resource4"}
print("Please input the desired width to dig in a square")
local width = tonumber(read())
print("Please input the desired height to dig.")
local height = tonumber(read())
print("Would you like to output to a chest? (y/n)")
local chest = read()

if chest == "y" then
  turtle.turnLeft()
  success, data = turtle.inspect()
  if data.name ~= "minecraft:chest" then
    print("Error 404: chest not found")
    turtle.turnRight()
    return
  end
  turtle.turnRight()
end
for i = 1, height do
  n = width
  while n ~= 0 do
  	for i = 1, n do
    while turtle.detect() do
      turtle.dig()
    end
  		turtle.forward()
  	end
  	turtle.turnRight()
  	for i = 1, n do
    while turtle.detect() do
      turtle.dig()
    end
  		  turtle.forward()
  	end
  	turtle.turnRight()
  	n = n-1
  end
  if width % 2 == 0 then
    turtle.turnRight()
    for i = 1, width/2 do
  		  turtle.back()
  	 end
  		turtle.turnLeft()
    for i = 1, width/2 do
  	  	turtle.back()
  	 end
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
    if chest == "y" then
    for i = 1, oldheight do
      turtle.down()
    end
    turtle.turnLeft()
    for i = 1, 16 do
      turtle.select(i)
      turtle.drop()
    end
    turtle.turnRight()
    if oldheight ~= height-1 then
      for i = 1, oldheight do
        turtle.up()
      end
    end
    oldheight = oldheight+1
end
  if oldheight ~= height then
    while turtle.detectUp() do
      turtle.digUp()
    end
    turtle.up()
  end
end
for i = 1, height do
  turtle.down()
end
