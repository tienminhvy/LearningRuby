# frozen_string_literal: true

# Traditional map calling with block
p %w[a b c d].map { |s| s.upcase }

# Use upcase block
p %w[def ghk abc one].map(&:upcase)
