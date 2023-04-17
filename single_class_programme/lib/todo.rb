class Todo
  def initialise
    @todo_list = []
  end

  def add(todo)
    fail "Please enter something todo." if todo.empty?

  end

  def list
  end

  def mark_complete(completed_task)
  end
end