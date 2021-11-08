require_relative 'state'
require_relative 'calc'

class Input < State
  def render
    enter_from_type
    enter_value
    enter_to_type
  end

  def next
    @context.transition_to(Calc.new)
  end

  def enter_from_type
    puts 'Input type temperature from convert (C, K, F):'
    @context.from = gets.chomp
    @context.from = gets.chomp until type?(@context.from)
  end

  def enter_value
    puts 'Input value:'
    @context.value = gets.chomp
    @context.value = gets.chomp until number?(@context.value)
    @context.value = Float(@context.value)
  end

  def enter_to_type
    puts 'Input type temperature to convert (C, K, F):'
    @context.to = gets.chomp
    @context.to = gets.chomp until type?(@context.to) && (@context.from != @context.to)
  end

  def type?(type)
    types = %w[C K F]
    types.include? type
  end

  def number?(num)
    !Float(num).nil?
  rescue StandardError
    false
  end
end
