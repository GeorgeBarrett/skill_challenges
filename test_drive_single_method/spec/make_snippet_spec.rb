require "make_snippet.rb"

RSpec.describe "make_snippet method" do

  it "if the sting is longer than five words then a '...' will replace the rest of the words" do

    result = make_snippet("this is more than five words")
    expect(result).to eq "this is more than five..."
  end
end
    