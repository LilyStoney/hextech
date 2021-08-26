# frozen_string_literal: true

RSpec.describe RiotApi::Adapter, vcr: true do
  describe '#send_request' do
    subject do
      VCR.use_cassette('adapter') do
        described_class.new.send_request
      end
    end

    it 'returns a missing path error' do
      expect { subject }.to raise_error(
        NotImplementedError, 'Missing path attribute'
      )
    end

    context 'without an api key' do
      before do
        allow_any_instance_of(RiotApi::Adapter).to receive(:path).and_return('http://www.google.com')
      end

      around do |example|
        ClimateControl.modify RIOT_API_KEY: nil do
          example.run
        end
      end

      it 'returns an ApiKeyMissing error' do
        expect { subject }.to raise_error(
          RiotApi::ApiKeyMissing,
          'Missing API Key. Please ensure you store this as an Environment Variable RIOT_API_KEY.'
        )
      end
    end
  end
end
