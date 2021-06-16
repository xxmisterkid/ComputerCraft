local success, data
while true do
  local event, key, isHeld = os.pullEvent("key")  
  if (keys.getName(key))=="up" or (keys.getName(key))=="w" then
    print("Forward")
    turtle.forward()
  end
  if (keys.getName(key))=="down" or (keys.getName(key))=="s" then
    print("Back")
    turtle.back()
  end
  if (keys.getName(key))=="left" or (keys.getName(key))=="a" then
    print("Left")
    turtle.turnLeft()
  end
  if (keys.getName(key))=="right" or (keys.getName(key))=="d" then
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
  if (keys.getName(key))=="r" then
    if turtle.detect() then
      success, data = turtle.inspect()
      print(data.name .. data.metadata)
    end
  end
  if (keys.getName(key))=="k" then
    shell.run("wood")
  end
  if (keys.getName(key))=="e" then
    turtle.dig()
  end
end