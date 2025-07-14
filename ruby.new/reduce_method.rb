# frozen_string_literal: true

p [1, 3, 5, 7].reduce(0) { |sum, element| sum + element } # 0 + 1 + 3 + 5 + 7 == 16

p [3, 4, 5, 7].reduce(2, :*) # 2 * 3 * 4 * 5 * 7 == 840
