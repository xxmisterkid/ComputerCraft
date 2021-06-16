x = 1
y = 2
local text = "I am a happy nigger. ^.^"
mon = peripheral.wrap("monitor_0")
mon.clear()
mon.setCursorPos(x,y)
mon.setTextScale(1.5)
mon.setTextColor(colors.purple)
xres, yres = mon.getSize()
while true do
  for x=xres+1, (string.len(text)*-1), -1 do
    mon.setCursorPos(x,y)
    mon.clear()
    mon.write(text)
    sleep(.1)
  end
end