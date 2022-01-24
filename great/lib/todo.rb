class Todo
  attr_reader :description, :complete
  attr_writer :complete
  def initialize(description)
    @description = description
    @complete = false
  end

  def todo_to_string(todo, index)
    description = todo[:description]
    complete = todo_completion_to_string(todo)
    "#{index}. #{description} #{complete}"
  end

  def todo_completion_to_string(todo)
    todo[:complete] ? "complete" : "not complete"
  end
end
