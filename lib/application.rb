require_relative 'context'
require_relative 'app_states/input'
require_relative 'app_states/exit'

class Application
  def run
    context = Context.new(Input.new)
    until context.state.is_a? Exit
      context.render
      context.next
    end
  end
end
