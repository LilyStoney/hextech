# frozen_string_literal: true

RSpec.describe Hextech::League::ThirdPartyCode, vcr: true do
  describe '.call' do
    context 'when a third party code is set' do
      subject do
        VCR.use_cassette('league/third_party_code/success') do
          described_class.call(summoner_id: '1234', region: 'euw1')
        end
      end

      it 'returns a third party code string' do
        expect(subject).to eq('Example Third Party Code')
      end
    end

    context 'when no third party code is set' do
      subject do
        VCR.use_cassette('league/third_party_code/not_found') do
          described_class.call(summoner_id: '1234', region: 'euw1')
        end
      end

      it 'returns an empty string' do
        expect { subject }.to raise_error(
          Hextech::NotFound, 'Resource not found.'
        )
      end
    end
  end
end
