# frozen_string_literal: true

RSpec.describe RiotApi::League::Clash::AllTournaments, vcr: true do
  subject do
    VCR.use_cassette('league/clash/all_tournaments') do
      described_class.call(region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to include(
        a_hash_including(
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
        ),
        a_hash_including(
          id: 2,
          theme_id: 2,
          name_key: 'somethingelse',
          name_key_secondary: 'somethingelse',
          schedule: [
            a_hash_including(
              id: 2,
              registration_time: Time.at(1_501_377_133_000 / 1000),
              start_time: Time.at(1_607_812_245_000 / 1000),
              cancelled: false
            )
          ]
        )
      )
    end
  end
end
