local success, data
local blocknames = {"minecraft", "ic2"}
local blockdata = {"gold_ore0", "iron_ore0", "coal_ore0", "lapis_ore0", "diamond_ore0", "redstone_ore0", "emerald_ore0", "resource1", "resource2", "resource3", "resource4", }
local function orecheck()
	if turtle.detect() then
	success, data = turtle.inspect()
	if success = blocknames[1] or blocknames[2] and data = blockdata[1] or blockdata[2] or blockdata[3] or blockdata[4] or blockdata[5] or blockdata[6] or blockdata[7] or blockdata[8] or blockdata[9] or blockdata[10] or blockdata[11] then
	turtle.dig()
end
while turtle.detect() do
  turtle.up()
  turtle.dig()
  turtle.down()
  if turtle.detect() then
    turtle.dig()
    turtle.forward()
  end
end
turtle.down()
turtle.turnLeft()
turtle.turnLeft()
while not turtle.detect() do
  turtle.forward()
end
