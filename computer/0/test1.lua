local icoppercable = fs.open("icoppercable", "r")
icoppercable.close()
if icoppercable then
	a = math.floor(icoppercable.readLine()*1)
	b = math.floor(icoppercable.readLine()*1)
	print(a, "Copper Cables")
	print(b, "Rubber")
end

print(b)

---Insulated Copper Cable---
--1 Copper Cables
--1 Rubber
