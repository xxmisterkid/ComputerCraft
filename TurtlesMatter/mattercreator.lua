---Matter Creator---

---Item to look for---

--print("What item are you trying to create?")

--local input = tonumber( read())

--add scan command here--


---Window size---
local w,h = term.getSize()
local centery = (9)

function testcenter (t,b)
  local x = math.floor((w - string.len(b)) /2)
  term.setCursorPos(x,t)
  term.clearLine()
  term.write(b)
end

testcenter()
--function printCenter (y,s)
--  local x = math.floor((w - string.len(s)) /2)
--  term.setCursorPos(x,y)
--  term.clearLine()
--  term.write(s)
--end

---Set Variables for []---

local box = 1
local test = 1
local test2 = 1


local function testbox()
  testcenter(math.floor(centery) - 1, ((box == 1) and "[ ]") or "[]")
  testcenter(math.floor(centery) + 0, ((box == 2) and "[ ]") or "[]")
  testcenter(math.floor(centery) + 1, ((box == 3) and "[ ]") or "[]")
end
---Place [X] in cords---

local function testMark()
  testcenter(print())
end

term.clear()
local function drawFrontend()
  printCenter(math.floor(h/2) - 1, ((box == 1) and "[ ]") or "[]")
  printCenter(math.floor(h/2) + 0, ((box == 2) and "[ ]") or "[]")
  printCenter(math.floor(h/2) + 1, ((box == 3) and "[ ]") or "[]")
end

drawFrontend()



term.clear()
local function drawFrontend2()
  printCenter(math.floor(h/2) - 1, ((box == 4) and "[X]") or "[]")
  printCenter(math.floor(h/2) + 0, ((box == 5) and "[ ]") or "[]")
  printCenter(math.floor(h/2) + 1, ((box == 6) and "[ ]") or "[]")
end

drawFrontend2()


term.clear()
local function drawFrontend3()
  printCenter(math.floor(h/2) - 1, ((box == 7) and "[ ]") or "[]")
  printCenter(math.floor(h/2) + 0, ((box == 8) and "[X]") or "[]")
  printCenter(math.floor(h/2) + 1, ((box == 9) and "[ ]") or "[]")
end

drawFrontend3()


term.clear()
local function drawFrontend4()
  printCenter(math.floor(h/2) - 1, ((box == 10) and "[ ]") or "[]")
  printCenter(math.floor(h/2) + 0, ((box == 11) and "[ ]") or "[]")
  printCenter(math.floor(h/2) + 1, ((box == 12) and "[X]") or "[]")
end

drawFrontend4()

---Selection Keys---
--w = 17 -- up = 200 --
--s = 31 -- down = 208 --
--a = 30 -- left = 203 --
--d = 32 -- right = 205 --
--enter = 28 -- space = 57 --

while true do
  local e,p = os.pullEvent()
  if e == "key" then
    local key = p
    if key == 17 or key == 200 then
      if box > 1 then
        box = box - 1
        testbox()
      end
    elseif key == 31 or key == 208 then
      if box < 3 then
        box = box + 1
        testbox()
      end
    elseif key == 30 or key == 203 then
        if box > 1 then
          box = box - 1
          testbox()
      end
	elseif key == 32 or key == 205 then
	  if box < 3 then
	    box = box + 1
		testbox()
	  end
	  elseif key == 28 or key == 57 then
	  break
    end
  end
end
term.clear()

--Marked or not--




--Conditions--
if box == 1 then
  testbox()
elseif box == 4 then
  testbox()
elseif box == 7 then
  testbox()
elseif box == 10 then
  drawFrontend4()
end

