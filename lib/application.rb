require_relative 'context'
require_relative 'app_states/input'
require_relative 'app_states/exit'

class Application
  def run
    context = Context.new(Input.new)
    context.do until context.state.is_a? Exit
  end
end
