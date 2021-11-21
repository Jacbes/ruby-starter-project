require_relative 'state'
require_relative 'input_value'
require_relative '../data_check'
require_relative '../io_adapter'

class InputFrom < State
  def render
    IOAdapter.instance.write('Input type temperature from convert (C, K, F):')
  end

  def next
    @from = IOAdapter.instance.read
    if DataCheck.new.type?(@from)
      InputValue.new(from: @from)
    else
      self
    end
  end
end
