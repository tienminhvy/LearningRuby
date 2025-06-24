# frozen_string_literal: true

def call_block
  puts 'something'
  yield
  yield
  puts 'something'
end

call_block { puts 'nothing' }

def who_says_that
  yield('Lorem', 'ipsum')
  yield('Dolor', 'amet')
end

who_says_that { |person, phrase| puts "#{person} says #{phrase}" }
