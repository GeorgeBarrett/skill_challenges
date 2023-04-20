class Todo
  def initialize
    @todo = []
    @completed_todos = []
  end

  def add(todo)
    @todo << todo
  end

  def marked_complete
  end

  def list
    @todo
  end
end