# frozen_string_literal: true

RSpec.describe RiotApi::Global::ActiveShard, vcr: true do
  subject do
    VCR.use_cassette('global/active_shard') do
      described_class.call(game: 'lor', puuid: '1234', region: 'europe')
    end
  end

  it 'returns a response object' do
    expect(subject).to have_attributes(
      puuid: '1234',
      game: 'lor',
      active_shard: 'europe'
    )
  end
end
