local mon = peripheral.wrap("top")
freespace = fs.getFreeSpace("")
freespaceKB = freespace/1024
freespaceMB = freespaceKB/1024
--print(freespace .. " B free")
mon.write(math.floor(freespaceKB) .. " KB free")
--print(math.floor(freespaceMB) .. " MB free")
