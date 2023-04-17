class GrammarStats

  def initialize
    #...
  end

  def check(text) # text is a string
    fail "Please enter some words." if text.empty?

    punctuation = [".", "!", "?"]
    first_character = text.chars.first
    last_character = text.chars.last

    if first_character == first_character.upcase && punctuation.include?(last_character)
      return true
    else
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end

end