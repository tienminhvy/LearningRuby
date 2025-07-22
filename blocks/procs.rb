# frozen_string_literal: true

proc1 = ->arg { puts arg }
proc2 = -> arg1, arg2 { puts "#{arg1} and #{arg2}" }
proc3 = ->(arg1, arg2) { p "#{arg1} and #{arg2}" }

proc1.call('Lorem')
proc2.call('Lorem', 'Ipsum')
proc3.call('Dolor', 'Amet')
