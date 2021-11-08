require './lib/app_states/input'

RSpec.describe Input do
  describe '#next' do
    subject { Context.new(Input.new).next.state }

    it { is_expected.to be_a Calc }
  end

  describe '#type?' do
    subject { Input.new.type?('C') }

    it { is_expected.to eq true }
  end

  describe '#number? true' do
    subject { Input.new.number?('0') }

    it { is_expected.to eq true }
  end

  describe '#number? false' do
    subject { Input.new.number?('g') }

    it { is_expected.to eq false }
  end
end
