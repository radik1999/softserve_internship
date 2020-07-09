def max_pref(string)
  result = 0
  1.upto(string.length / 2) do |i|
    pref = string[0, i]
    if string.start_with?(pref) && string.end_with?(pref)
      result = pref.length
    end
  end
  return result
end
