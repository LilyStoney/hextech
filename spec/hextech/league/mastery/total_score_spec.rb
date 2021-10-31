# frozen_string_literal: true

RSpec.describe Hextech::League::Mastery::TotalScore do
  subject do
    VCR.use_cassette('league/mastery/total_score') do
      described_class.call(summoner_id: '1234', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to eq(100)
    end
  end
end
