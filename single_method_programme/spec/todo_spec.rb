require "todo_checker.rb"

RSpec.describe "todo_checker method" do

  context "if #TODO is the only word in the sting" do
    it "returns true" do
      result = todo_checker("#TODO")
      expect(result).to eq true
    end
  end

  context "if #todo is the only word in the sting" do
  it "returns false" do
    result = todo_checker("#todo")
    expect(result).to eq false
    end
  end

  context "if #ToDo is the only word in the sting" do
  it "returns false" do
    result = todo_checker("#ToDo")
    expect(result).to eq false
    end
  end

  context "if `#todo` is in the string with other words" do
  it "returns false" do
    result = todo_checker("#todo get some clothes from bristol")
    expect(result).to eq false
    end
  end

  context "if the string includes #TODO" do
  it "returns true" do
    result = todo_checker("#TODO get some clothes from bristol")
    expect(result).to eq true
    end
  end
  
  context "if the string is an integer" do
    it "it fails" do
      expect { todo_checker(666) }.to raise_error "Please enter a string value that includes #TODO" 
    end
  end

  context "if the string is empty" do
    it "it fails" do
      expect { todo_checker("") }.to raise_error "Please enter a string value that includes #TODO" 
    end
  end

end