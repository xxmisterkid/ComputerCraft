--Diamond--

local item = "diamonds"

print("How many ".. item, " do you want to make?")

local input = tonumber( read())
local i = 1
turtle.select(1)
while turtle.getItemCount(1) < input do turtle.suck() end
if turtle.getItemCount(1) > input then turtle.drop(turtle.getItemCount(1)-input) end
turtle.select(2)
while turtle.getItemCount(2) < input do turtle.suck() end
if turtle.getItemCount(2) > input then turtle.drop(turtle.getItemCount(2)-input) end
turtle.select(3)
while turtle.getItemCount(3) < input do turtle.suck() end
if turtle.getItemCount(3) > input then turtle.drop(turtle.getItemCount(3)-input) end
turtle.select(5)
while turtle.getItemCount(5) < input do turtle.suck() end
if turtle.getItemCount(5) > input then turtle.drop(turtle.getItemCount(5)-input) end
turtle.select(6)
while turtle.getItemCount(6) < input do turtle.suck() end
if turtle.getItemCount(6) > input then turtle.drop(turtle.getItemCount(6)-input) end
turtle.select(7)
while turtle.getItemCount(7) < input do turtle.suck() end
if turtle.getItemCount(7) > input then turtle.drop(turtle.getItemCount(7)-input) end
turtle.select(9)
while turtle.getItemCount(9) < input do turtle.suck() end
if turtle.getItemCount(9) > input then turtle.drop(turtle.getItemCount(9)-input) end
turtle.select(10)
while turtle.getItemCount(10) < input do turtle.suck() end
if turtle.getItemCount(10) > input then turtle.drop(turtle.getItemCount(10)-input) end
turtle.select(11)
while turtle.getItemCount(11) < input do turtle.suck() end
if turtle.getItemCount(11) > input then turtle.drop(turtle.getItemCount(11)-input) end

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

turtle.craft()
turtle.turnRight()
turtle.turnRight()
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
