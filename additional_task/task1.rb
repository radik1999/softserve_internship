puts 'Enter number of month:'
month_number = gets.chomp

quarter = case month_number
          when '1'..'3' then 'first'
          when '4'..'6' then 'second'
          when '7'..'9' then 'third'
          when '10'..'12' then 'fourth'
          else false
          end

res = "#{month_number} is "
res += quarter ? "#{quarter} quarter" : "not a month number"

puts res


