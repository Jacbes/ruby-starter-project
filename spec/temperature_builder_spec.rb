require './lib/temperature_builder'

RSpec.describe TemperatureBuilder do
  describe '#init' do
    subject { TemperatureBuilder.new.temperature.value }

    it { is_expected.to eq 0.0 }
  end

  describe '#type_set_celsus' do
    subject { TemperatureBuilder.new.type_set('C').temperature }

    it { is_expected.is_a? Celsius }
  end

  describe '#type_set_kelvin' do
    subject { TemperatureBuilder.new.type_set('K').temperature }

    it { is_expected.is_a? Kelvin }
  end

  describe '#type_set_fahrenheit' do
    subject { TemperatureBuilder.new.type_set('F').temperature }

    it { is_expected.is_a? Fahrenheit }
  end

  describe '#type_set_trash' do
    subject { TemperatureBuilder.new.type_set('G').temperature }

    it { is_expected.is_a? Temperature }
  end

  describe '#value_set' do
    subject { TemperatureBuilder.new.value_set(15.2).temperature.value }

    it { is_expected.to eq 15.2 }
  end

  describe '#value_set_trash' do
    subject { TemperatureBuilder.new.value_set('G').temperature.value }

    it { is_expected.to eq 0.0 }
  end

  describe '#convert_to_celsius' do
    subject { TemperatureBuilder.new.type_set('K').convert_to('C') }

    it { is_expected.to eq(-273.15) }
  end

  describe '#convert_to_kelvin' do
    subject { TemperatureBuilder.new.type_set('C').convert_to('K') }

    it { is_expected.to eq 273.15 }
  end

  describe '#convert_to_fahrenheit' do
    subject { TemperatureBuilder.new.type_set('C').convert_to('F') }

    it { is_expected.to eq 32 }
  end

  describe '#covert_to_trash' do
    subject { TemperatureBuilder.new.type_set('C').convert_to('G') }

    it { is_expected.is_a? TemperatureBuilder }
  end
end
