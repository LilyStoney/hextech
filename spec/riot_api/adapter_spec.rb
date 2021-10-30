# frozen_string_literal: true

RSpec.describe RiotApi::Adapter, vcr: true do
  describe '#call' do
    subject do
      VCR.use_cassette('adapter') do
        described_class.new.call
      end
    end

    context 'without a host method' do
      before do
        allow_any_instance_of(RiotApi::Adapter).to receive(:path).and_return('/example')
      end

      it 'returns a missing path error' do
        expect { subject }.to raise_error(
          NotImplementedError, 'Missing host attribute'
        )
      end
    end

    context 'without a path method' do
      before do
        allow_any_instance_of(RiotApi::Adapter).to receive(:host).and_return('http://www.example.com')
      end

      it 'returns a missing path error' do
        expect { subject }.to raise_error(
          NotImplementedError, 'Missing path attribute'
        )
      end
    end

    context 'without an api key' do
      before do
        allow_any_instance_of(RiotApi::Adapter).to receive(:host).and_return('http://www.example.com')
        allow_any_instance_of(RiotApi::Adapter).to receive(:path).and_return('/example')
      end

      around do |example|
        ClimateControl.modify RIOT_API_KEY: nil do
          example.run
        end
      end

      it 'returns an KeyError error' do
        expect { subject }.to raise_error(KeyError, 'key not found: "RIOT_API_KEY"')
      end
    end
  end
end
