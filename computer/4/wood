local success, data

function digUp()
 turtle.digUp()
	turtle.dig()
	turtle.up()
end

function down()
	 while not turtle.detectDown() do
   turtle.down()
 	end
end

while true do
  if turtle.detect() then
    success, data = turtle.inspect()
    if data.name == "minecraft:log" then
      digUp()
    else
      down()
    end
  else
    down()
    break
  end
end


