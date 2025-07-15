# frozen_string_literal: true

def a_function_with_yields
  yield
  yield
end

a_function_with_yields { puts 'meowww' }

f = File.open("#{Dir.pwd}/data/lorem_ipsum.txt")
f.each.with_index do |line, index|
  puts "Line #{index + 1} is: #{line}"
end
