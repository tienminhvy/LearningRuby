data = {
  clean_code: {
    short_name: 'Clean Code',
    full_name: 'Clean Code: A Handbook of Agile Software Craftsmanship',
    year: 2008,
    authors: ['Robert C. Martin']
  },
  code_complete: {
    short_name: 'Code Complete',
    full_name: 'Code Complete, Second Edition',
    year: 2004,
    authors: ['Steve McConnell'],
    publishers: ['Microsoft']
  }
}

p data.dig(:clean_code, :isbn) # will return nil
p data.dig(:clean_code, :short_name)
p data.dig(:clean_code, :year) # will return 2008

p data.dig(:code_complete, :full_name)
p data.dig(:code_complete, :publisher) # will return nil
p data.dig(:code_complete, :publishers, 0)

# use traditional way will throw exception

p data[:clean_code][:publishers][1] # will throw exception
