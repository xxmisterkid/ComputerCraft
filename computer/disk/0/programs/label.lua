term.clear()
term.setTextColor(colors.purple)
term.setCursorPos(1,1)
print(os.getComputerLabel())
if os.getComputerID() < 10 then term.write("192.168.1.10")
elseif os.getComputerID() < 100 then term.write("192.168.1.1")
else term.write("192.168.1.")
end
print(os.getComputerID())
