---Materials---
term.clear()
term.setCursorPos(1,1)
local input = read()
local file = fs.open("basematerials/" .. input, "r")


if file then
	term.clear()
	term.setCursorPos(1,1)
	shell.run("basematerials/" .. input)
else
	print(input, "does not exist.")
end
