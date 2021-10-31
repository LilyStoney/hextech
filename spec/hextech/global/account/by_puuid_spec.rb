# frozen_string_literal: true

RSpec.describe Hextech::Global::Account::ByPuuid, vcr: true do
  subject do
    VCR.use_cassette('global/account/by_puuid') do
      described_class.call(puuid: '1234', region: 'europe')
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
