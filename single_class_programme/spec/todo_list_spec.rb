require "todo_list"

RSpec.describe TodoList do
  context "given no tasks do" do
    it "has an empty list" do
      todo_list = TodoList.new()
      expect(todo_list.list).to eq []
    end
  end
  context "given a task" do
    it "has the task in the list" do
      todo_list = TodoList.new()
      todo_list.add("Wash my clothes")
      expect(todo_list.list).to eq ["Wash my clothes"]
    end
  end
  context "given two task" do
    it "has both tasks in the list" do
      todo_list = TodoList.new()
      todo_list.add("Wash my clothes")
      todo_list.add("Buy some pants")
      expect(todo_list.list).to eq ["Wash my clothes", "Buy some pants"]
    end
  end
  context "when i complete a task" do
    it "removes the task from the list" do
      todo_list = TodoList.new()
      todo_list.add("Wash my clothes")
      todo_list.add("Buy some pants")
      todo_list.complete("Wash my clothes")
      expect(todo_list.list).to eq ["Buy some pants"]
    end
  end
  context "when i try to complete a task that doesn't exist" do
    it "it fails" do
      todo_list = TodoList.new()
      todo_list.add("Wash my clothes")
      expect { todo_list.complete("Wash my cup") }.to raise_error "Task does not exist"
    end
  end
end