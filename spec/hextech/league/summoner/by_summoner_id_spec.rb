# frozen_string_literal: true

RSpec.describe Hextech::League::Summoner::BySummonerId, vcr: true do
  subject do
    VCR.use_cassette('league/summoner/by_summoner_id') do
      described_class.call(id: '1234', region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to have_attributes(
        account_id: 'account_id',
        id: '1234',
        name: 'Example',
        profile_icon_id: 3008,
        puuid: 'puuid',
        revision_date: Time.at(1_607_814_033_000 / 1000),
        summoner_level: 100
      )
    end
  end
end
