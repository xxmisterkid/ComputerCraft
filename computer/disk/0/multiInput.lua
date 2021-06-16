while true do
  local event, button, x, y, z = os.pullEvent()
  if event == "mouse_click" then
  print("\nThe mouse button ", button, " was pressed at ", x, " and ", y)
  end
  if event == "char" then
    term.write(button)
  end
end