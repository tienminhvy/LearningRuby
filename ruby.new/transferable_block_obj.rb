# frozen_string_literal: true

def get_block_as_callback(&block)
  warn 'A block is required' unless block_given?

  block
end

nil_blc = get_block_as_callback

p nil_blc

blc = get_block_as_callback { |name| "My name is #{name}" }

# Need to use call method because passing block as variable does not recornized as a function
puts blc.call('Nothing')
puts blc.class

puts blc.call(1412)
puts blc.call('cat')

# new syntax of lambda fn
blc = ->(name) { puts "Hi #{name}" }

blc.call('John Doe')

# traditional syntax
blc = lambda { |name| puts "Something wrong, #{name}, let's fix it!" }

blc.call('Doe')

# proc syntax
blc = proc { |name| puts "Hey, #{name}, let's fix it!" }

blc.call('Ipsum')

# Using Proc.new
blc = Proc.new { puts 'This is a block of code ' }
blc.call
