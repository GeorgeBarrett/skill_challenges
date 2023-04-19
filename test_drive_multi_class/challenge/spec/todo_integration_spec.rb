require 'todo'
require 'todo_list'

RSpec.describe TodoList do
  context 'calls from Todo' do 
    it 'adds a todo to the todo list' do
      todo_list = TodoList.new
      todo = Todo.new('finish multitask classes')
      todo_list.add(todo)
      expect(todo_list.incomplete).to eq [todo]
    end

    it "returns list of two incomplete tasks" do
      todo_list = TodoList.new
      todo = Todo.new('lalala')
      todo_2 = Todo.new('blah blah')
      todo_list.add(todo)
      todo_list.add(todo_2)
      expect(todo_list.incomplete).to eq [todo, todo_2] 
    end
  
    xit "raise error if todo already exists" do
      todo_list = TodoList()
      todo = Todo.new('something')
      todo_2 = Todo.new('something')
      expect { todo_2 }.to raise_error "Todo already exists."
    end
  end
end