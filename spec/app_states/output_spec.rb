require './lib/app_states/output'

RSpec.describe Input do
  describe '#next' do
    subject { Context.new(Output.new).render }

    it { is_expected.to eq nil }
  end

  describe '#exit?' do
    subject { Output.new.exit?('n') }

    it { is_expected.to eq true }
  end

  describe '#again?' do
    subject { Output.new.again?('y') }

    it { is_expected.to eq true }
  end
end
