# frozen_string_literal: true

RSpec.describe Hextech::League::Mastery::ByChampion do
  subject do
    VCR.use_cassette('league/mastery/by_champion') do
      described_class.call(summoner_id: '1234', champion_id: '1', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to have_attributes(
        champion_id: 1,
        champion_level: 1,
        champion_points: 643,
        last_play_time: Time.at(1_501_377_133_000 / 1000),
        champion_points_since_last_level: 643,
        champion_points_until_next_level: 1157,
        chest_granted: false,
        tokens_earned: 0,
        summoner_id: '1234'
      )
    end
  end
end
