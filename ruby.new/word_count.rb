# frozen_string_literal: true

require_relative 'words_freq'

raw_text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Aenean tincidunt nec tortor a hendrerit. Sed eu viverra dolor, sit amet tristique augue.
Quisque faucibus placerat nisl ut egestas. Integer consequat pharetra facilisis.
Quisque commodo dui nec mi hendrerit vestibulum. Vivamus aliquet purus ac ultrices lacinia.
Etiam vestibulum interdum libero in facilisis. Cras consequat vestibulum tortor, non facilisis justo semper ac.
Proin leo odio, consequat in turpis in, iaculis maximus enim. In id mi eget eros pulvinar elementum.'

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by { |_, count| count }
top_five = sorted.last(5)

top_five.reverse_each do |word, count|
  puts "#{word}: #{count}"
end
