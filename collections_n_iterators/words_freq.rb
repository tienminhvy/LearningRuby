# frozen_string_literal: true

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

words = words_from_string('I like Ruby, it is (usually) optimized for programmer happiness')

def count_frequency(words)
  counts = Hash.new(0)
  words.each do |word|
    counts[word] += 1
  end
  counts
end

p count_frequency(words)
