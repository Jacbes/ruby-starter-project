require_relative 'state'
require_relative 'calc'
require_relative '../io_adapter'

class InputTo < State
  def render
    IOAdapter.instance.write('Input type temperature to convert (C, K, F):')
  end

  def next
    @to = IOAdapter.instance.read
    if DataCheck.new.type?(@to) && (@from != @to)
      Calc.new(from: @from, value: @value, to: @to)
    else
      self
    end
  end
end
