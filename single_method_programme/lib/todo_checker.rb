def todo_checker(string)

  fail "Please enter a string value that includes #TODO" if !string.is_a? String
  fail "Please enter a string value that includes #TODO" if string.empty?

  if string.include?("#TODO")
    return true
  else
    false
  end

end