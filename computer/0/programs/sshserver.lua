local sModemSide
tabs = {}

for i, sSide in ipairs(rs.getSides()) do
  if peripheral.getType(sSide) == "modem" then
  sModemSide = sSide
  rednet.open(sModemSide)
  end
end

while true do
  ID, message = rednet.receive("ssh")
  print(message)
  if message == "dir" then
    local fileList = fs.list(shell.dir())
    rednet.send(ID, table.concat(fileList, "\n"), "ssh")
  elseif message == "kill" then
    for i = 1, tonumber(multishell.getCount()) do
      tabs[i] = multishell.getTitle(i)
    end
    rednet.send(ID, table.concat(tabs, "\n"), "ssh")
    ID, message = rednet.receive("ssh")
    for i = 1, tonumber(multishell.getCount()) do
      if multishell.getTitle(i) == message then
        print("Killing", message)
        multishell.setFocus(i)
        sleep(0.05)
        shell.run("/programs/clear")
      end
    end
  else
    shell.run("bg ", message)
  end
end