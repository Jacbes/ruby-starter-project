require_relative 'state'
require_relative 'input_to'
require_relative '../data_check'
require_relative '../io_adapter'

class InputValue < State
  def render
    IOAdapter.instance.write('Input value:')
  end

  def next
    @value = IOAdapter.instance.read
    if DataCheck.new.number?(@value)
      InputTo.new(from: @from, value: Float(@value))
    else
      self
    end
  end
end
