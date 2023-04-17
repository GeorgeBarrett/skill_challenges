require "grammar_stats.rb"

RSpec.describe GrammarStats do
  
  describe "#check(text)" do
    context "make sure the string is not empty" do
      it "it fails" do
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

  describe "#percentage_good" do
    context "when two strings are passed correctly" do
      it "returns 100" do
        grammar_stats = GrammarStats.new()
        grammar_stats.check("Hello!")
        grammar_stats.check("Why hello again.")
        expect(grammar_stats.percentage_good).to eq 100
      end
    end
    context "when no correct strings are passed" do
      it "returns 0" do
        grammar_stats = GrammarStats.new()
        grammar_stats.check("Hello")
        grammar_stats.check("why.")
        expect(grammar_stats.percentage_good).to eq 0
      end
    end
    context "when two correct and two incorrect is passed" do
      it "returns 50" do
        grammar_stats = GrammarStats.new()
        grammar_stats.check("Hello!")
        grammar_stats.check("Why hello again.")
        grammar_stats.check("Hello")
        grammar_stats.check("why.")
        expect(grammar_stats.percentage_good).to eq 50
      end
    end
  end

end

# test for an empty string
# test for capital letter and punctuation mark
# test for having capital but no punctation mark and vice versa

# does it return an integer
# return 100
# returns 50 

