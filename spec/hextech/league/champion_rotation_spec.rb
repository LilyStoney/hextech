# frozen_string_literal: true

RSpec.describe Hextech::League::ChampionRotation, vcr: true do
  subject do
    VCR.use_cassette('league/champion_rotation') do
      described_class.call(region: 'euw1')
    end
  end

  it 'returns a response object' do
    expect(subject).to have_attributes(
      free_champion_ids: [1, 2, 3, 4, 5],
      free_champion_ids_for_new_players: [6, 7, 8, 9, 10],
      max_new_player_level: 10
    )
  end
end
