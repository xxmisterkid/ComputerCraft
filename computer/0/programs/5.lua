local sModemSide

for i, sSide in ipairs(rs.getSides()) do
  if peripheral.getType(sSide) == "modem" then
  sModemSide = sSide
  rednet.open(sModemSide)
  end
end

while true do
    ID, ssh = rednet.receive("ssh")
  if ssh == "ssh" then
    shell.run(ssh)
  end
end
