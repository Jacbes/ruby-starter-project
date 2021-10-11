require_relative 'temperature'
require_relative 'celsius'
require_relative 'kelvin'
require_relative 'fahrenheit'

class TemperatureBuilder
  attr_reader :temperature

  def initialize
    @temperature = Temperature.new
  end

  def type_set(from)
    case from
    when 'C'
      @temperature = Celsius.new
    when 'K'
      @temperature = Kelvin.new
    when 'F'
      @temperature = Fahrenheit.new
    end
    self
  end

  def value_set(value)
    @temperature.value = value if value.is_a? Float
    self
  end

  def convert_to(to)
    case to
    when 'C'
      @temperature.to_celsius
    when 'K'
      @temperature.to_kelvin
    when 'F'
      @temperature.to_fahrenheit
    end
  end
end
