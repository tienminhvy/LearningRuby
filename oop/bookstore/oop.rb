# frozen_string_literal: true

require_relative 'book_in_store'

a_book = BookInStore.new('x', 3)
another_book = BookInStore.new('y', 4)
p a_book, another_book

puts a_book, another_book

book = BookInStore.new('isbn1', 33.80)

puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75 # discount price
puts "New price = #{book.price}"

puts "Price in cents = #{book.price_in_cents}"

puts

book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
