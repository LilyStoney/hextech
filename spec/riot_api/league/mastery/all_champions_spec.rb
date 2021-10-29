# frozen_string_literal: true

RSpec.describe RiotApi::League::Mastery::AllChampions do
  subject do
    VCR.use_cassette('league/mastery/all_champions') do
      described_class.call(summoner_id: '1234', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to include(
        a_hash_including(
          champion_id: 78,
          champion_level: 7,
          champion_points: 102_510,
          last_play_time: Time.at(1_607_812_245_000 / 1000),
          champion_points_since_last_level: 80_910,
          champion_points_until_next_level: 0,
          chest_granted: false,
          tokens_earned: 0,
          summoner_id: '1234'
        ),
        a_hash_including(
          champion_id: 99,
          champion_level: 7,
          champion_points: 70_876,
          last_play_time: Time.at(1_532_475_123_000 / 1000),
          champion_points_since_last_level: 49_276,
          champion_points_until_next_level: 0,
          chest_granted: false,
          tokens_earned: 0,
          summoner_id: '1234'
        )
      )
    end
  end
end
