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
