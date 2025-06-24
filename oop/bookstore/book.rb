# frozen_string_literal: true

# a simple class which represents a book
class BookInStore
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "isbn: #{@isbn}, price: #{@price}"
  end
end

a_book = BookInStore.new('x', 3)
another_book = BookInStore.new('y', 4)
p a_book, another_book

puts a_book, another_book
