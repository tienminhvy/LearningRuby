# frozen_string_literal: true

# A generator algorithm using enumerator
double_numbers = Enumerator.new do |yielder|
  num = 1
  loop do
    yielder.yield(num)
    num *= 2
  end
end

16.times { print double_numbers.next, ' ' }

# A shorter version of infinite generator

double_numbers = Enumerator.produce(1) do |number|
  number * 2
end

puts "\nShorter algorithm but still return the same answer: "
16.times { print double_numbers.next, ' ' }
puts

# InfiniteStream class
class InfiniteStream
  def all
    Enumerator.produce(0) do |number|
      number + 1
    end.lazy
  end
end

p InfiniteStream.new.all.first(100)
