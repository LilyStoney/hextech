# frozen_string_literal: true

RSpec.describe Hextech::League::Spectator do
  describe '#active_games' do
    subject { described_class.active_games(params) }

    let(:response) { instance_double(Hextech::League::Response::ActiveGames) }
    let(:params) { { summoner_id: '1234', region: 'euw1' } }

    it 'returns a ActiveGames response object' do
      expect(Hextech::League::Spectator::ActiveGames).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#featured_games' do
    subject { described_class.featured_games(params) }

    let(:response) { instance_double(Hextech::League::Response::FeaturedGames) }
    let(:params) { { region: 'euw1' } }

    it 'returns a FeaturedGames response object' do
      expect(Hextech::League::Spectator::FeaturedGames).to receive(:call).with(params).and_return(response)

      subject
    end
  end
end
