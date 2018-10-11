class TodoPrinter
  # attr_reader :description

  # def initialize
  #   @todolist = todolist
  # #   @description = description
  # #   @complete = false
  # end

  def todo_to_string(todo,index=0)
    "#{(index+1).to_s}. #{todo.description.to_s} #{todo_printer_complete(todo)}"
  end

  def todo_printer_complete(todo)
    todo.complete? ? "complete" : "not complete"
  end

  def printer(list)
     list.todos.each_with_index.map { |todo, i| todo_to_string(todo, i)}.join("\n")
  end


end
