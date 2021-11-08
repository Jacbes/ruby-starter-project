require './lib/temperature'
require './lib/celsius'

RSpec.describe Celsius do
  describe '#to_kelvin' do
    subject { Celsius.new.to_kelvin }

    it { is_expected.to eq 273.15 }
  end

  describe '#to_fahrenheit' do
    subject { Celsius.new.to_fahrenheit }

    it { is_expected.to eq 32.0 }
  end
end
