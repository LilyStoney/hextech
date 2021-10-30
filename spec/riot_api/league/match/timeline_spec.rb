# frozen_string_literal: true

RSpec.describe RiotApi::League::Match::Timeline, vcr: true do
  subject do
    VCR.use_cassette('league/match/timeline') do
      described_class.call(match_id: 'EUW1_1234567890', region: 'EUROPE')
    end
  end

  let(:response_file) { File.read('spec/fixtures/json/truncated_match_response.json') }
  let(:parsed_expectation) { JSON.parse(response_file).to_symbolized_snake_keys }

  describe '.call' do
    it 'returns a match response' do
      expect(subject).to eq(parsed_expectation)
    end
  end
end
