require "./lib/todo.rb"


class TodoList

  attr_reader :todos
  def initialize
    @todos = []
  end

  def add(description, todo_klass = Todo)
    @todos << todo_klass.new(description)
  end

  def get(index)
    all[index]
  end

  def set_complete(index)
    get(index).complete = true
  end

  # def to_string(self)
  #   @todos.each_with_index.map { |todo, index|
  #     todo_to_string(todo, index + 1)
  #   }.join("\n")
  # end

  # def to_string(list)
  #   todo_printer.printer(@todos)
  # end

  def todo_to_string(todo,index=0)
    "#{(index+1).to_s}. #{todo.description.to_s} #{todo_printer_complete(todo)}"
  end

  def todo_printer_complete(todo)
    todo.complete? ? "complete" : "not complete"
  end

  def to_string
     @todos.each_with_index.map { |todo, i| todo_to_string(todo, i)}.join("\n")
  end

  private

  def all
    @todos
  end
end
