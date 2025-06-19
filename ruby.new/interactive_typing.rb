# frozen_string_literal: true

while (line = gets)
  puts line.downcase
end

# if radiation > 3000
#   puts "Danger, Will Robinson"
# end
#
# Into
puts 'Danger, Will Robinson' if radiation > 3000

square = 4
# while square < 1000
#   square = square * square
# end
#
# Into
square *= square while square < 1000
