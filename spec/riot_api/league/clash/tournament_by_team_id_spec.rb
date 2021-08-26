# frozen_string_literal: true

RSpec.describe RiotApi::League::Clash::TournamentByTeamId, vcr: true do
  subject do
    VCR.use_cassette('league/clash/tournament_by_team_id') do
      described_class.call(team_id: '1', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to have_attributes(
        id: 1,
        theme_id: 1,
        name_key: 'something',
        name_key_secondary: 'something',
        schedule: [
          a_hash_including(
            id: 1,
            registration_time: Time.at(1_741_687_299_910 / 1000),
            start_time: Time.at(1_839_502_930_212 / 1000),
            cancelled: false
          )
        ]
      )
    end
  end
end
