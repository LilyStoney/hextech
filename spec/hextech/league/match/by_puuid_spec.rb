# frozen_string_literal: true

RSpec.describe Hextech::League::Match::ByPuuid, vcr: true do
  subject do
    VCR.use_cassette('league/match/by_puuid') do
      described_class.call(puuid: '1234', region: 'EUROPE')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to include('EUW1_4976634631', 'EUW1_4976575240', 'EUW1_4976455703')
    end
  end
end
