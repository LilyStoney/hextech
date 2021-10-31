# frozen_string_literal: true

RSpec.describe Hextech::League::Clash::TeamByTeamId, vcr: true do
  subject do
    VCR.use_cassette('league/clash/team_by_team_id') do
      described_class.call(team_id: '1', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to include(
        id: '1',
        tournament_id: 1,
        name: 'Example Tournament',
        icon_id: 1,
        tier: 1,
        captain: '1',
        abbreviation: 'EXP',
        players: [
          {
            summoner_id: '1',
            position: 'TOP',
            role: 'CAPTAIN'
          },
          {
            summoner_id: '2',
            position: 'JUNGLE',
            role: 'MEMBER'
          },
          {
            summoner_id: '3',
            position: 'MIDDLE',
            role: 'MEMBER'
          },
          {
            summoner_id: '4',
            position: 'BOTTOM',
            role: 'MEMBER'
          },
          {
            summoner_id: '5',
            position: 'UTILITY',
            role: 'MEMBER'
          }
        ]
      )
    end
  end
end
