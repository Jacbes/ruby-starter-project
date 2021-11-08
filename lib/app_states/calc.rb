require_relative 'state'
require_relative 'output'
require_relative '../temperature_builder'

class Calc < State
  def render
    builder = TemperatureBuilder.new
    @context.result = builder.type_set(@context.from)
                             .value_set(@context.value)
                             .convert_to(@context.to)
  end

  def next
    @context.transition_to(Output.new)
  end
end
