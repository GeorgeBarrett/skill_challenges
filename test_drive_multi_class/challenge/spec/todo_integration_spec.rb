require "todo"
require "todo_list"

require 'todo'
require 'todo_list'

RSpec.describe TodoList do
  context 'calls from Todo' do 
    xit 'adds a todo to the todo list' do
      todo_list = TodoList.new
      todo = Todo.new('finish multitask classes')
      result = todo_list.add(todo)

      expect(result.incomplete).to eq 'finish multitask classes'
    end
  
    it "raise error if todo already exists" do
      todo_list = TodoList()
      todo = Todo.new('something')
      todo_2 = Todo.new('something')
      expect { todo_2 }.to raise_error "Todo already exists."
    end

  end
end