def get_data
  puts "Enter data split by space\n1. Price of product\n2. Discount\n3. Amount of product"
  return gets.chomp.split(' ').collect { |i| i.to_f }
end

def calculate_saved_money(price, discount, amount)
  return ((price / 100) * discount) * amount
end

data = get_data
puts "You will save " + calculate_saved_money(data[0], data[1], data[2]).to_s
