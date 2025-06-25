# frozen_string_literal: true

# a simple class which represents a book
class BookInStore
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "isbn: #{@isbn}, price: #{@price}"
  end

  # def isbn
  #   @isbn
  # end
  #
  # def price
  #   @price
  # end

  attr_accessor :price
  attr_reader :isbn

  # def price=(price)
  #   @price=price
  # end ==> attr_writer or attr_accessor

  def price_in_cents
    (price * 100).round
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

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
