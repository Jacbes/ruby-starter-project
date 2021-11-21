class State
  attr_accessor :from, :value, :to, :result

  def initialize(from: 'C', value: 0, to: 'K', result: 0)
    @from = from
    @value = value
    @to = to
    @result = result
  end

  def render; end

  def next; end
end
