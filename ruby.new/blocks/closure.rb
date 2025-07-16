# frozen_string_literal: true

def n_times(thing)
  ->(n) { thing * n }
end

p1 = n_times(9)
p p1.call(3)
p p1.call(9)

p2 = n_times('clinché ')
puts p2.call(10)
