# frozen_string_literal: true

def a_function_with_yields
  yield
  yield
end

a_function_with_yields { puts 'meowww' }
