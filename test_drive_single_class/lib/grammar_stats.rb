class GrammarStats

  def initialize
    @total_checks = 0
    @passed_checks = 0
    @failed_checks = 0
  end

  def check(text) # text is a string
    fail "Please enter some words." if text.empty?
    @total_checks += 1
    punctuation = [".", "!", "?"]
    first_character = text.chars.first
    last_character = text.chars.last

    if first_character == first_character.upcase && punctuation.include?(last_character)
      @passed_checks += 1
      return true
    else
      @failed_checks += 1
      return false
    end
  end

  def percentage_good
    (@passed_checks / @total_checks) * 100 
  
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end

end