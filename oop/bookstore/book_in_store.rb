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

  # setter
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end
