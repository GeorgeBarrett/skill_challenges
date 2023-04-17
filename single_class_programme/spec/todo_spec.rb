require "todo.rb"

RSpec.describe Todo do
  describe "#add(todo)" do
    context "make sure string is not empty" do
      it "it fails" do
        todo = Todo.new()
        expect { todo.add("") }.to raise_error "Please enter something todo."
      end
    end
  end
end
