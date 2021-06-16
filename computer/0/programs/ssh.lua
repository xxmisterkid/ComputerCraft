arg1 = ...
local function printUsage()
  print("Usage:")
  print("ssh <ID>")
end
local ID = tonumber(arg1)
if ID == nil then
  printUsage()
  return
else
  while true do
    input = read()
    rednet.send(ID, input, "ssh")
    if input == "dir" then
      ID, message = rednet.receive("ssh")
      print(message)
    elseif input == "kill" then
      ID, message = rednet.receive("ssh")
      print("Which program would you like to kill?")
      print(message)
      rednet.send(ID, read(), "ssh")
    end
  end
end