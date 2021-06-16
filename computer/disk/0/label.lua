local mon = peripheral.wrap("top")
mon.clear()
mon.setTextColor(colors.purple)
mon.setCursorPos(1,1)
mon.setTextScale(1.5)
mon.write(os.getComputerLabel())
mon.setCursorPos(1,2)
mon.write("10.0.0.")
term.redirect(mon)
print(os.getComputerID())
term.restore()
freespace = fs.getFreeSpace("")
freespaceKB = freespace/1024
freespaceMB = freespaceKB/1024
--print(freespace .. " B free")
mon.write(math.floor(freespaceKB) .. " KB free")
--print(math.floor(freespaceMB) .. " MB free")