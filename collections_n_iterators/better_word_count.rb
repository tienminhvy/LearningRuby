# frozen_string_literal: true

require_relative 'words_freq'

raw_text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Aenean tincidunt nec tortor a hendrerit. Sed eu viverra dolor, sit amet tristique augue.
Quisque faucibus placerat nisl ut egestas. Integer consequat pharetra facilisis.
Quisque commodo dui nec mi hendrerit vestibulum. Vivamus aliquet purus ac ultrices lacinia.
Etiam vestibulum interdum libero in facilisis. Cras consequat vestibulum tortor, non facilisis justo semper ac.
Proin leo odio, consequat in turpis in, iaculis maximus enim. In id mi eget eros pulvinar elementum.'

puts(words_from_string(raw_text)
  .tally
  .sort_by { |_, count| count }
  .tap { |result| puts "Sorted tally: #{result}\n\n" }
  .last(5)
  .tap { |result| puts "Last five result: #{result}\n\n" }
  .reverse
  .tap { |result| puts "reversed: #{result}\n\n" }
  .map { |word, count| puts "#{word}: #{count}" })
