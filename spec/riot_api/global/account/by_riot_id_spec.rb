# frozen_string_literal: true

RSpec.describe RiotApi::Global::Account::ByRiotId, vcr: true do
  subject do
    VCR.use_cassette('global/account/by_riot_id') do
      described_class.call(game_name: 'Example Summoner', tag_line: 'EUW', region: 'europe')
    end
  end

  it 'returns a response object' do
    expect(subject).to have_attributes(
      puuid: '1234',
      game_name: 'Example Summoner',
      tag_line: 'EUW'
    )
  end
end
