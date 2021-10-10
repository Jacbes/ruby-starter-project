require './lib/temperature'
require './lib/celsius'
require './lib/kelvin'
require './lib/fahrenheit'
require './lib/temperature_builder'

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

RSpec.describe TemperatureBuilder do
  describe '#init' do
    subject { TemperatureBuilder.new.temperature.value }

    it { is_expected.to eq 0.0 }
  end

  describe '#type_set_celsus' do
    subject { TemperatureBuilder.new.type_set('C').temperature }

    it { is_a? Celsius }
  end

  describe '#type_set_trash' do
    subject { TemperatureBuilder.new.type_set('G').temperature }

    it { is_a? Temperature }
  end

  describe '#value_set' do
    subject { TemperatureBuilder.new.value_set(15.2).temperature.value }

    it { is_expected.to eq 15.2 }
  end

  describe '#value_set_trash' do
    subject { TemperatureBuilder.new.value_set('G').temperature.value }

    it { is_expected.to eq 0.0 }
  end

  describe '#convert_to' do
    subject { TemperatureBuilder.new.type_set('C').convert_to('K') }

    it { is_expected.to eq 273.15 }
  end

  describe '#covert_to_trash' do
    subject { TemperatureBuilder.new.type_set('C').convert_to('G') }

    it { catch(:wrong_type) { true } }
  end
end
