require './lib/app_states/output'

RSpec.describe Output do
  describe '#exit? true' do
    subject { Output.new.exit?('n') }

    it { is_expected.to eq true }
  end

  describe '#exit? false' do
    subject { Output.new.exit?('g') }

    it { is_expected.to eq false }
  end

  describe '#again? true' do
    subject { Output.new.again?('y') }

    it { is_expected.to eq true }
  end

  describe '#again? false' do
    subject { Output.new.again?('f') }

    it { is_expected.to eq false }
  end
end
