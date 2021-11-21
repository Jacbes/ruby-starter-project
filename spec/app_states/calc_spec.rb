require './lib/app_states/calc'

RSpec.describe Calc do
  describe '#render' do
    subject { Calc.new.render }

    it { is_expected.to eq 273.15 }
  end

  describe '#next' do
    subject { Calc.new.next }

    it { is_expected.to be_a Output }
  end
end
