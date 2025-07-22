# frozen_string_literal: true

# Monkey-patching the File class
class File
  # see File::open
  def self.open_and_process(*args)
    f = File.open(*args)
    unless block_given?
      warn 'You need to provide a block when calling this method!'
      return
    end
    yield f
    f.close
  end
end

File.open_and_process("#{Dir.pwd}/data/lorem_ipsum.txt", 'r') do |file|
  file.each.with_index do |line, index|
    puts "Line #{index + 1} is: #{line}"
  end
end

File.open_and_process("#{Dir.pwd}/data/lorem_ipsum.txt", 'r')
