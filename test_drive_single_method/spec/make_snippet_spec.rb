require "make_snippet.rb"

RSpec.describe "make_snippet method" do

  it "if the sting is longer than five words then a '...' will replace the rest of the words" do

    result = make_snippet("this is more than five words")
    expect(result).to eq "this is more than five..."
  end

  it  "if the string is shorter than five words" do

    result = make_snippet("obelisk density")
    expect(result).to eq "obelisk density"
  end
end
    