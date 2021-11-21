require_relative 'state'
require_relative 'output'
require_relative '../temperature_builder'

class Calc < State
  def render
    builder = TemperatureBuilder.new
    @result = builder.type_set(@from)
                     .value_set(@value)
                     .convert_to(@to)
  end

  def next
    Output.new(result: @result)
  end
end
