def check_print(colors)
  available_colors = ('a'..'f').to_a
  puts available_colors
  errors = 0
  colors.each_char do |color|
    errors += 1 unless available_colors.include?(color)
  end
  return "#{errors}/#{colors.length}"
end
