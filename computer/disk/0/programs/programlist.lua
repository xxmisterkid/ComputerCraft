local FileList = fs.list("/programs")
filecount = 0
for _, file in ipairs(FileList) do
  print(file)
--filecount = filecount+1
end
filecount = #FileList
print(filecount .. " programs found.")