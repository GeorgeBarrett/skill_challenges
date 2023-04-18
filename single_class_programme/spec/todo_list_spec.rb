require "todo_list"

RSpec.describe TodoList do
  context "given no tasks do" do
    xit "has an empty list" do
      todo_list = TodoList.new()
      expect(todo_list.list).to eq []
    end
  end
  context "given a task" do
    xit "has the task in the list" do
      todo_list = TodoList.new()
      todo_list.add("Wash my cloths")
      expect(todo_list.list).to eq ["Wash my clothes"]
    end
  end
  context "given two task" do
    xit "has both tasks in the list" do
      todo_list = TodoList.new()
      todo_list.add("Wash my cloths")
      todo_list.add("Buy some pants")
      expect(todo_list.list).to eq ["Wash my clothes", "Buy some clothes"]
    end
  end
  context "when i complete a task" do
    xit "removes the task from the list" do
      todo_list = TodoList.new()
      todo_list.add("Wash my cloths")
      todo_list.add("Buy some pants")
      todo_list.complete("Wash my clothes")
      expect(todo_list.list).to eq ["Buy some clothes"]
    end
  end
  context "when i try to complete a task that doesn't exist" do
    xit "it fails" do
      todo_list = TodoList.new()
      todo_list.add("Wash my cloths")
      expect { todo_list.list("Wash my cup") }.to raise_error "Task does not exist"
    end
  end
end