PLANET_ORDER = {'0' => 'Sun', '1' => 'Mercury', '2' => 'Venus', '3' => 'Earth', '4' => 'Mars', '5' => 'Jupiter',
                        '6' => 'Saturn', '7' => 'Uranus', '8' => 'Neptune', '9' => 'Pluto'}

puts "Enter a planet's order"
order = gets.chomp

puts PLANET_ORDER.include?(order) ? "The #{PLANET_ORDER[order]} has #{order} place" : "There isn't such planet"