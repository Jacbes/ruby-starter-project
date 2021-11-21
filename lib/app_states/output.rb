require_relative 'state'
require_relative 'exit'

class Output < State
  def render
    IOAdapter.instance.write(@result.to_s)
    IOAdapter.instance.write('Another one? (y, n):')
  end

  def next
    inp = IOAdapter.instance.read

    if again?(inp)
      InputFrom.new
    elsif exit?(inp)
      Exit.new
    else
      self
    end
  end

  def exit?(inp)
    inp == 'n'
  end

  def again?(inp)
    inp == 'y'
  end
end
