def my_sum(a, b)
  if a == 1 or b == 1
    return a + b
  else
    return a * b
  end
end

def biggest_number(a, b, c)
  return [my_sum(a, my_sum(b, c)), my_sum(my_sum(a, b), c)].max
end

puts biggest_number 1, 2, 2
