# frozen_string_literal: true

require 'csv'
require_relative 'book_in_store'

# A class for reading data from CSV file
class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStore.new(row['ISBN'], row['Price'])
    end
  end

  def total_value_in_store
    # traditional way for summarize price_in_cents of each book
    sum = 0.0
    @books_in_stock.each { |book| sum += book.price_in_cents }
    sum /= 100.0
  end

  def number_of_each_isbn; end
end
