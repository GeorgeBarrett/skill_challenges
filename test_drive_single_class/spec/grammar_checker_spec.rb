require "grammar_stats.rb"

RSpec.describe GrammarStats do
  
  describe "#check(text)" do
    context "it fails" do
      it "make sure the string is not empty" do
        grammar_stats = GrammarStats.new()
        expect { grammar_stats.check("") }.to raise_error "Please enter some words."
      end
    end
    context "when passed a string with capital and punctuation" do
      it "it returns true" do
        grammar_stats = GrammarStats.new()
        expect(grammar_stats.check("Hello.")).to eq true
      end  
    end
    context "when passed a string with a capital but no punctuation at the end" do
      it "returns false" do
        grammar_stats = GrammarStats.new()
        expect(grammar_stats.check("Hola")).to eq false
      end
    end
  end
end

# test for an empty string
# test for capital letter and punctuation mark
# test for having capital but no punctation mark and vice versa

