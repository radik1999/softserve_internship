def number_sign(number)
  return number >= 0
end

def func(arr)
  sign_changed = 0
  if arr.length < 1
    return 0
  end
  1.upto(arr.length - 1) do |i|
    if number_sign(arr[i - 1]) != number_sign(arr[i])
      sign_changed += 1
    end
  end
  return sign_changed
end

