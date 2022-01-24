require "todo"

class TodoList
  def initialize
    @todos = []
  end

  def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
  end

  def get(index)
    all[index]
  end

  def set_complete(index)
    get(index)[:complete] = true
  end

  private

  def all
    @todos
  end
end
