def make_snippet(str)

  array = str.split(" ")
  result = array.slice(0..4).join(" ")
  return "#{result}..."
    
end

puts make_snippet("making up a sentence more more more more")