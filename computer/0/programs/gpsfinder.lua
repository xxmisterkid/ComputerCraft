rednet.open("back")
local x, y, z = gps.locate()
while true do
  oldx = x
  oldy = y
  oldz = z
  x, y, z = gps.locate()
  reply = os.getComputerLabel().. ": ".. math.floor(x).. ", ".. math.floor(y).. ", ".. math.floor(z)
  if x ~= oldx or y ~= oldy or z~= oldz then
    rednet.send(34, reply, "gps")
  end
  sleep(.5)
end
