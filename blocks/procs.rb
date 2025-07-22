# frozen_string_literal: true

proc1 = ->(arg) { puts arg }
proc2 = ->(arg1, arg2) { puts "#{arg1} and #{arg2}" }
proc3 = ->(arg1, arg2) { p "#{arg1} and #{arg2}" }

proc1.call('Lorem')
proc2.call('Lorem', 'Ipsum')
proc3.call('Dolor', 'Amet')

# ProcExample
class ProcExample
  def set_proc(&proc)
    @proc = proc
  end

  def use_proc(parameter)
    @proc.call(parameter)
  end
end

example = ProcExample.new
example.set_proc { |me| puts "Hello #{me}" }

example.use_proc('Lorem Ipsum')
