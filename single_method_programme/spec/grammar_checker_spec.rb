require "grammar_checker.rb"

RSpec.describe "grammar_checker method" do

  it "fails" do

    expect { grammar_checker("") }.to raise_error "You idiot"

  end

  # it "string ends with an appropriate punctuation mark"

  #   result = grammar_checker("word!")
  #   expect(result).to eq true
  
  # end
  
  it "if string has capital and ends with full stop" do

    result = grammar_checker("Capital.")
    expect(result).to eq true

  end

  it "if string has capital but no full stop" do

    result = grammar_checker("Capital")
    expect(result).to eq false

  end

  it "if string has full stop but no capital" do

    result = grammar_checker("capital.")
    expect(result).to eq false

  end

  it "if string has neither capital or punctuation" do

    result = grammar_checker("capital")
    expect(result).to eq false

  end

  it "if string has capital and exclamation mark" do

    result = grammar_checker("Capital!")
    expect(result).to eq true

  end

  it "if string has capital but no question mark" do

    result = grammar_checker("Capital?")
    expect(result).to eq true

  end

end

