require_relative 'app_states/input_from'
require_relative 'app_states/exit'

class Application
  def run
    state = InputFrom.new
    until state.is_a? Exit
      state.render
      state = state.next
    end
  end
end
