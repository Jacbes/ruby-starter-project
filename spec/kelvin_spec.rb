require './lib/temperature'
require './lib/kelvin'

RSpec.describe Kelvin do
  describe '#to_celsius' do
    subject { Kelvin.new.to_celsius }

    it { is_expected.to eq(-273.15) }
  end

  describe '#to_fahrenheit' do
    subject { Kelvin.new.to_fahrenheit }

    it { is_expected.to eq(-459.67) }
  end
end
