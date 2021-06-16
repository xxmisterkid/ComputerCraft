local function printUsage()
  print("Usage:\nupload <filename> <ID>")
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
else
  -- If file does not exist
  if shell.resolveProgram(arg1) == nil then
    print("Error: File not found")
    return
  end
  local file = fs.open(shell.resolveProgram(arg1), "r")
  ID = tonumber(arg2)
  rednet.send(ID, "upload", "ftp")
  print("Uploading", arg1, "to", arg2)
  rednet.send(ID, shell.resolveProgram(arg1), "ftp")
  rednet.send(ID, file.readAll(), "ftp")
  file.close()
  print("File uploaded.")
end
