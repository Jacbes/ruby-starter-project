require './lib/temperature'

RSpec.describe Temperature do
  describe '#temperature_new_empty' do
    subject { Temperature.new.value }

    it { is_expected.to eq 0.0 }
  end

  describe '#temperature_new_10' do
    subject { Temperature.new(10.0).value }

    it { is_expected.to eq 10.0 }
  end
end
