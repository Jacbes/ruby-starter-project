require './lib/temperature'
require './lib/fahrenheit'

RSpec.describe Fahrenheit do
  describe '#to_celsius' do
    subject { Fahrenheit.new.to_celsius }

    it { is_expected.to eq(-17.78) }
  end

  describe '#to_kelvin' do
    subject { Fahrenheit.new.to_kelvin }

    it { is_expected.to eq 255.37 }
  end
end
