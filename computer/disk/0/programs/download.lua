local function printUsage()
  print("Usage:\ndownload <filename> <ID>")
end 
local arg1, arg2 = ...
if arg1 == nil or arg2 == nil then
  printUsage()
  return
end
-- Searches all sides for a wireless modem
local sModemSide
for i, sSide in ipairs(rs.getSides()) do
  if peripheral.getType(sSide) == "modem" then
    sModemSide = sSide
    rednet.open(sModemSide)
  end
end
if sModemSide == nil then
  print("A modem is required to run this program.")
  return
end
ID = tonumber(arg2)
rednet.send(ID, "download", "ftp")
print("Downloading", arg1, "from", arg2)
rednet.send(ID, arg1,"ftp")
print("File downloaded.")
