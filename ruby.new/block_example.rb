# frozen_string_literal: true

def call_block
  puts 'something'
  yield
  yield
  puts 'something'
end

call_block { puts 'nothing' }

puts "\n"

def who_says_that
  yield('Lorem', 'ipsum')
  yield('Dolor', 'amet')
end

who_says_that { |person, phrase| puts "#{person} says #{phrase}" }

puts "\n"

# animals = ['ant', 'bee', 'cow', 'sheep', 'dog', 'cat', 'python', 'snake', 'koala']
animals = %w[ant bee cow sheep dog cat python snake koala]
animals.each do |animal|
  puts animal
end

puts '\n'

%w[cat dog horse].each { |name| print name, ' ' }
5.times { print '*' }
3.upto(6) { |i| print i }
('a'..'e').each { |char| print char }
('a'..'e').each { print _1 }
