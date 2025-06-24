# frozen_string_literal: true

def call_block
  puts 'something'
  yield
  yield
  puts 'something'
end

call_block { puts 'nothing' }
