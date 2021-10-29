# frozen_string_literal: true

RSpec.describe RiotApi::League::Match::ByMatchId, vcr: true do
  subject do
    VCR.use_cassette('league/match/by_match_id') do
      described_class.call(match_id: 'EUW1_1234567890', region: 'EUROPE')
    end
  end

  let(:response_file) { File.read('spec/fixtures/json/truncated_match_response.json') }
  let(:parsed_expectation) { JSON.parse(response_file) }

  describe '.call' do
    it 'returns a match response' do
      parsed_response = JSON.parse(subject.body)

      expect(parsed_response).to eq(parsed_expectation)
    end
  end
end
