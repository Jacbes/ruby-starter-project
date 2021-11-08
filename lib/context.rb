class Context
  attr_accessor :state, :from, :to, :value, :result

  def initialize(state)
    @from = 'C'
    @to = 'K'
    @value = 0.0
    @result = 0.0
    transition_to(state)
  end

  def transition_to(state)
    @state = state
    @state.context = self
  end

  def render
    @state.render
  end

  def next
    @state.next
  end
end
