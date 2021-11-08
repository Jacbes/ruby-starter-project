require_relative 'state'
require_relative 'exit'

class Output < State
  def render
    puts @context.result.to_s
  end

  def next
    puts 'Another one? (y, n):'
    inp = gets.chomp
    inp = gets.chomp until exit?(inp) || again?(inp)
    @context.transition_to(Exit.new) if exit?(inp)
    @context.transition_to(Input.new) if again?(inp)
  end

  def exit?(inp)
    inp == 'n'
  end

  def again?(inp)
    inp == 'y'
  end
end
