# frozen_string_literal: true

RSpec.describe RiotApi::League::Spectator::FeaturedGames, vcr: true do
  subject do
    VCR.use_cassette('league/spectator/featured_games') do
      described_class.call(region: 'euw1')
    end
  end

  let(:response_file) { File.read('spec/fixtures/json/featured_games.json') }
  let(:symbolized_response) { JSON.parse(response_file).to_symbolized_snake_keys }
  let(:response_object) { RiotApi::League::Response::FeaturedGames.new(symbolized_response) }

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to eq(response_object)
    end
  end
end
