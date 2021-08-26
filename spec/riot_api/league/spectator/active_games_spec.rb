# frozen_string_literal: true

RSpec.describe RiotApi::League::Spectator::ActiveGames, vcr: true do
  subject do
    VCR.use_cassette('league/spectator/active_games') do
      described_class.call(summoner_id: '1234', region: 'euw1')
    end
  end

  let(:response_file) { File.read('spec/fixtures/json/active_games.json') }
  let(:symbolized_response) { JSON.parse(response_file).to_symbolized_snake_keys }
  let(:response_object) { RiotApi::League::Response::ActiveGames.new(symbolized_response) }

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to eq(response_object)
    end
  end
end
