# frozen_string_literal: true

a = [1, 'cat', 3.14]
puts "The first element is #{a[0]}"
a[2] = nil
puts "The array is now #{a.inspect}"

instrument_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}

p instrument_section['cello']
p instrument_section['trumpet']
p instrument_section['drum']
