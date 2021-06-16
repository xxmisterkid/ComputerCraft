local success, data
while true do
  local event, key, isHeld = os.pullEvent("key")  
  if (keys.getName(key))=="up" then
    print("Forward")
    turtle.forward()
  end
  if (keys.getName(key))=="down" then
    print("Back")
    turtle.back()
  end
  if (keys.getName(key))=="left" then
    print("Left")
    turtle.turnLeft()
  end
  if (keys.getName(key))=="right" then
    print("Right")
    turtle.turnRight()
  end
  if (keys.getName(key))=="leftShift" then
    print("Down")
    turtle.down()
  end
  if (keys.getName(key))=="space" then
    print("Up")
    turtle.up()
    end
  if (keys.getName(key))=="e" then
    if turtle.detect() then
      success, data = turtle.inspect()
      print(data.name.. ":" .. data.metadata)
    end
  end
end
