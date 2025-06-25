# frozen_string_literal: true

require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv_file_name|
  # $stderr.puts "Processing #{csv_file_name}" -- use 'warn' instead
  warn "Processing #{csv_file_name}"
  reader.read_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_store}"
