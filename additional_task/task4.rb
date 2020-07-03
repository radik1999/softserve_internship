def create_expression(a, b)
  if a != 0 and b != 0 and b != 1
    return "#{a*b}x^#{b-1}"
  else
    return 'Bad parameters'
  end
end

puts create_expression 2, 3