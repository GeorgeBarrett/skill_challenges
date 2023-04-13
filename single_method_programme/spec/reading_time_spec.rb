require "reading_time.rb"

RSpec.describe "reading_time method" do

  it "if an empty string is given, returns 0.0" do

    result = reading_time("")
    expect(result).to eq 0.0

  end

  it "if a string consisting of one word is given, return 0.005" do

    result = reading_time("obelisk")
    expect(result).to eq 0.005
  
  end

end


# reading_time("") => 0.0
# reading_time("text") => 0.005
# reading_time("text " * 200) => 1
# reading_time("texttexttext") => 0.005
# reading_time(nil) throws an error
# reading_time(666) throws an error