class Todo
  def initialize
    @todo = []
    @completed_todos = false
  end

  def add(todo)
    @todo << todo
  end

  def marked_complete
    @completed_todos = true
  end

  def done?
    return @completed_todos
  end

  def list
    @todo
  end
end