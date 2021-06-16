---Crafting---
local function craftitem()
	turtle.select(16)
	turtle.craft()
	turtle.drop()
end
local item = "lava"
quantity = 1
maxcraft = quantity * 64
uuquantity = 3
maxuu = uuquantity * 64

print("How many ".. item .. " do you want to make?")
print("Max: " .. maxcraft .. " " .. item .. ", using " .. maxuu .. " UU")

local input = tonumber( read())
output = input/quantity
local i = 1
turtle.select(1)
turtle.drop()
turtle.select(2)
while turtle.getItemCount(2) < output do turtle.suck() end
if turtle.getItemCount(2) > output then turtle.drop(turtle.getItemCount(2)-output) end
turtle.select(3)
turtle.drop()
turtle.select(5)
turtle.drop()
turtle.select(6)
while turtle.getItemCount(6) < output do turtle.suck() end
if turtle.getItemCount(6) > output then turtle.drop(turtle.getItemCount(6)-output) end
turtle.select(7)
turtle.drop()
turtle.select(9)
turtle.drop()
turtle.select(10)
while turtle.getItemCount(10) < output do turtle.suck() end
if turtle.getItemCount(10) > output then turtle.drop(turtle.getItemCount(10)-output) end
turtle.select(11)
turtle.drop()
-- Scans borders and drops contents, then crafts item and drops into chest
turtle.select(4)
turtle.drop()
turtle.select(8)
turtle.drop()
turtle.select(12)
turtle.drop()
turtle.select(13)
turtle.drop()
turtle.select(14)
turtle.drop()
turtle.select(15)
turtle.drop()
turtle.select(16)
turtle.drop()
turtle.turnRight()
turtle.turnRight()
craftitem()

--Scan for excess UU Matter and continue crafting if necessary
while true do
	turtle.select(1)
	if turtle.getItemCount ~= 0 then craftitem() end
	turtle.select(2)
	if turtle.getItemCount ~= 0 then craftitem() end
	turtle.select(3)
	if turtle.getItemCount ~= 0 then craftitem() end
	turtle.select(5)
	if turtle.getItemCount ~= 0 then craftitem() end
	turtle.select(6)
	if turtle.getItemCount ~= 0 then craftitem() end
	turtle.select(7)
	if turtle.getItemCount ~= 0 then craftitem() end
	turtle.select(9)
	if turtle.getItemCount ~= 0 then craftitem() end
	turtle.select(10)
	if turtle.getItemCount ~= 0 then craftitem() end
	turtle.select(11)
	if turtle.getItemCount ~= 0 then craftitem() end
	break
end
	turtle.turnRight()
	turtle.turnRight()
