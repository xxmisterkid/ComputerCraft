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
