require 'todo'

RSpec.describe 'adds a todo to the list' do
  it 'lists the added todos' do
    todo = Todo.new
    todo.add("discover infinite")

    expect(todo.list).to eq ["discover infinite"]
  end

  it 'lists the added todos when multiple are added' do
    todo = Todo.new
    todo.add("discover infinite")
    todo.add("rediscover infinite")
    
    expect(todo.list).to eq ["discover infinite", "rediscover infinite"]
  end
end