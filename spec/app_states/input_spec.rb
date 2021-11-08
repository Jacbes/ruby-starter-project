require './lib/app_states/input'

RSpec.describe Input do
  describe '#type? true' do
    subject { Input.new.type?('C') }

    it { is_expected.to eq true }
  end

  describe '#type? false' do
    subject { Input.new.type?('g') }

    it { is_expected.to eq false }
  end

  describe '#number? true' do
    subject { Input.new.number?('0') }

    it { is_expected.to eq true }
  end

  describe '#number? false' do
    subject { Input.new.number?('f') }

    it { is_expected.to eq false }
  end
end
