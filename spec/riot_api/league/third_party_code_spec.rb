# frozen_string_literal: true

RSpec.describe RiotApi::League::ThirdPartyCode, vcr: true do
  describe '.call' do
    context 'a successful response' do
      subject do
        VCR.use_cassette('league/third_party_code/success') do
          described_class.call(summoner_id: '1234', region: 'euw1')
        end
      end

      context 'when a third party code has been applied' do
        it 'returns a third party code string' do
          expect(subject).to eq('Example Third Party Code')
        end
      end
    end

    context 'a not found response' do
      subject do
        VCR.use_cassette('league/third_party_code/not_found') do
          described_class.call(summoner_id: '1234', region: 'euw1')
        end
      end

      context 'when a third party code has been applied' do
        it 'returns a third party code string' do
          expect { subject }.to raise_error(RiotApi::NotFound, 'Resource not found.')
        end
      end
    end
  end
end
