# frozen_string_literal: true

a = [15, 26, 'something']
enum_a = a.to_enum
# or enum_a = a.each
p enum_a.next
p enum_a.next
p enum_a

h = {
  dog: 'lucy',
  fox: 'foxie'
}
enum_h = h.to_enum
p enum_h.next
p enum_h.next

# reversed enumerator

enum_a = a.to_enum(:reverse_each)
p enum_a.next
p enum_a.next

# looping through enumerator

short_enum = [1, 2, 3, 4, 5].to_enum
long_enum = ('a'..'z').to_enum

p long_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

# method chaining with enum

results = []
'hello world!'.each_char.with_index { |item, index| results << [item, index] }

p results
