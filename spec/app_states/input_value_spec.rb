require './lib/app_states/input_value'
require './lib/data_check'

RSpec.describe InputValue do
  let(:io_mock) { double 'IOAdapter' }
  before do
    allow(IOAdapter).to receive(:instance).and_return(io_mock)
    allow(io_mock).to receive(:write)
  end

  describe '#render' do
    it 'renders input types' do
      subject.render
      expect(io_mock).to have_received(:write).with(
        'Input value:'
      )
    end
  end

  describe '#next' do
    subject { described_class.new.next }
    before { allow(io_mock).to receive(:read).and_return(value) }

    context 'when the user inputs "C"' do
      let(:value) { '10' }
      it { is_expected.to be_a(InputTo) }
    end

    context 'when the user inputs another value' do
      let(:value) { 'fake' }
      it { is_expected.to be_a(InputValue) }
    end
  end
end
