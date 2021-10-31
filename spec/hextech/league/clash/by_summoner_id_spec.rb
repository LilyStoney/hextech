# frozen_string_literal: true

RSpec.describe Hextech::League::Clash::BySummonerId, vcr: true do
  subject do
    VCR.use_cassette('league/clash/by_summoner_id') do
      described_class.call(summoner_id: '0ecyETCiLKdBsaSYMJvoTtaz0GMEN0zpNjovVHMxCNAON8Q', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to include(
        a_hash_including(
          summoner_id: 1,
          team_id: 1,
          position: 'BOTTOM',
          role: 'CAPTAIN'
        ),
        a_hash_including(
          summoner_id: 2,
          team_id: 1,
          position: 'MIDDLE',
          role: 'MEMBER'
        ),
        a_hash_including(
          summoner_id: 3,
          team_id: 1,
          position: 'TOP',
          role: 'MEMBER'
        ),
        a_hash_including(
          summoner_id: 4,
          team_id: 1,
          position: 'JUNGLE',
          role: 'MEMBER'
        ),
        a_hash_including(
          summoner_id: 5,
          team_id: 1,
          position: 'UTILITY',
          role: 'MEMBER'
        )
      )
    end
  end
end
