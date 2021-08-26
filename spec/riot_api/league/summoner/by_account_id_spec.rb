# frozen_string_literal: true

RSpec.describe RiotApi::League::Summoner::ByAccountId, vcr: true do
  subject do
    VCR.use_cassette('league/summoner/by_account_id') do
      described_class.call(account_id: '1234', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to have_attributes(
        account_id: '1234',
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
