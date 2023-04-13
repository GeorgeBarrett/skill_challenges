require "reading_time.rb"

RSpec.describe "reading_time method" do

  it "a method that returns an estimated reading time, assuming 200 words are read per minute" do

  # result = reading_time("blah blah blah blah blah blah blah")
  # expect(result).to eq 0.035

  # result = reading_time("blah blah")
  # expect(result).to eq 0.01

  result = reading_time("blah")
  expect(result). to eq 0.3

  end
end
