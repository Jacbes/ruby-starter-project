require './lib/app_states/calc'

RSpec.describe Calc do
  describe '#render' do
    subject { Context.new(Calc.new).render }

    it { is_expected.to eq 273.15 }
  end

  describe '#render' do
    subject { Context.new(Calc.new).next.state }

    it { is_expected.to be_a Output }
  end
end
