# frozen_string_literal: true

# Old syntax
# instrument_section = {
#   :cello => 'string',
#   :clarinet => 'woodwind',
#   :drum => 'percussion',
#   :oboe => 'woodwind',
#   :trumpet => 'brass',
#   :violin => 'string'
# }

instrument_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  oboe: 'woodwind',
  trumpet: 'brass',
  violin: 'string'
}

p instrument_section[:cello]
p instrument_section[:trumpet]
p instrument_section[:drum]

puts "An oboe is a #{instrument_section[:oboe]} instrument"
