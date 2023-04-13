require "count_words.rb"

RSpec.describe "count_words method" do

  it "a method that returns the amount of words in a string" do

  result = count_words("counting words")
  expect(result).to eq 2

  result = count_words("counting more words")
  expect(result).to eq 3

  end
end




