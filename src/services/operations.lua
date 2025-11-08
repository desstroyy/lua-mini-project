local todo_service = require("src.services.todo_service")

function todo_service.create_todo(user_input)
  --8 because the word create and space will take 5 characters
  local name = string.sub(user_input, 8)
  name = name and name:match("^%s*(.-)%s*$") or ""

  if name == "" then
    print(" No name provided")
    return
  end
  local op = todo_service:_create_todo(name)
  if op then
    print(" Created todo")
  else
    print(" Todo not found")
  end
end

return todo_service
