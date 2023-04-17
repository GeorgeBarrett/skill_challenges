require "exercise01.rb"

RSpec.describe DiaryEntry do
  it "constructs" do 
    exercise01 = Exercise01.new("my_title", "my_contents")
    expect(exercise01.title).to eq title
  end
end