shell.setDir("/programs")
-- Searches all sides for a wireless modem
local sModemSide
for i, sSide in ipairs(rs.getSides()) do
  if peripheral.getType(sSide) == "modem" then
    sModemSide = sSide
    rednet.open(sModemSide)
  end
end
if sModemSide == nil then
  print("A wireless modem is required to run this program.")
  return
end
while true do
  ID, message = rednet.receive("ftp")
  print(message, "received from", ID)
  if message == "dir" or message == "ls" or message == "list"  then
    local fileList = fs.list(shell.dir())
    rednet.send(ID, table.concat(fileList, "\n"), "ftp")
  elseif message == "upload" then
    ID, message = rednet.receive("ftp")
    local file = fs.open(message, "w")
    print("Receiving file \"".. message .. "\" from ".. ID)
    ID, message = rednet.receive("ftp")
    file.write(message)
    file.close()
    print("File saved.")
  elseif message == "download" then
    ID, message = rednet.receive("ftp")
    shell.run("/programs/upload", message, ID)
  end
end
