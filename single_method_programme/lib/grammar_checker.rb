def grammar_checker(text)
  fail "You idiot" if text.empty?
  valid_endings = [".", "!", "?"].include?(text[-1])
  capital_first = text[0] == text[0].upcase

  if valid_endings && capital_first 
    return true
  else
    false
  end 
end
