---Matter Creator---

---Item to look for---

--print("What item are you trying to create?")

--local input = tonumber( read())

--add scan command here--


---Window height---
local w,h = term.getSize()

function printCenter (y,s)
  local x = math.floor((w - string.len(s)) /2)
  term.setCursorPos(x,y)
  term.clearLine()
  term.write(s)
end

---Set Variables for []---

local box = 1

---Place [] in cords---

term.clear()
local function drawFrontend()
  printCenter(math.floor(h/2) - 1, ((box == 1) and "[ ]") or "[]" )
  printCenter(math.floor(h/2) + 0, ((box == 2) and "[ ]") or "[]" )
  printCenter(math.floor(h/2) + 1, ((box == 3) and "[ ]") or "[]" )
end

drawFrontend()



