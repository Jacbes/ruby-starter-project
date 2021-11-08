require './lib/context'
require './lib/app_states/input'
require './lib/app_states/calc'

RSpec.describe Context do
  describe '#initialize' do
    let(:out) { Output.new }
    subject { Context.new(out).state }

    it { is_expected.to eq out }
  end

  describe '#transition_to' do
    let(:out) { Output.new }
    subject { Context.new(Input.new).transition_to(out).state }

    it { is_expected.to eq out }
  end

  describe '#render' do
    subject { Context.new(Calc.new).render }

    it { is_expected.to eq 273.15 }
  end

  describe '#next' do
    subject { Context.new(Exit.new).next }

    it { is_expected.to eq nil }
  end
end
