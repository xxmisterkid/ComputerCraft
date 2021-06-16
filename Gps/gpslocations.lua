mon = peripheral.wrap("top")
rednet.open("bottom")
mon.clear()
mon.setTextScale(1)
clients = {}
clientnum = 0
n = 0

-- Main loop to receive gps locations
while true do
  ID, message = rednet.receive("gps")
  print("Ayy")
  for i = 1, 3 do
    if clients[i] == ID then
      print("client already exists")
      n = n+1
    end
  end
  if n == 0 then
    clients[i] = ID
    n = 0
    print("Client #".. i.. " set to ".. message)
  else
    mon.setCursorPos(1,i)
    mon.clearLine()
    mon.write(message)
  end
end
