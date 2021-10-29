# frozen_string_literal: true

RSpec.describe RiotApi::League::Summoner::BySummonerName, vcr: true do
  subject do
    VCR.use_cassette('league/summoner/by_summoner_name') do
      described_class.call(name: 'Example', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to have_attributes(
        account_id: 'account_id',
        id: 'summoner_id',
        name: 'Example',
        profile_icon_id: 3008,
        puuid: 'puuid',
        revision_date: Time.at(1_607_814_033_000 / 1000),
        summoner_level: 100
      )
    end
  end
end
