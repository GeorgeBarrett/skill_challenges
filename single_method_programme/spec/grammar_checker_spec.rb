require "grammar_checker.rb"

RSpec.describe "grammar_checker method" do

  it "string does not start with a capital or end with full stop" do

    result = grammar_checker("this is wrong")
    expect(result).to eq false

  end
end

