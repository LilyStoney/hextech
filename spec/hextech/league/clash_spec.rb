# frozen_string_literal: true

RSpec.describe Hextech::League::Clash do
  describe '#all_tournaments' do
    subject { described_class.all_tournaments(params) }

    let(:response) { instance_double(Hextech::League::Response::Clash::Tournament) }
    let(:params) { { region: 'euw1' } }

    it 'returns a Tournament response object' do
      expect(Hextech::League::Clash::AllTournaments).to receive(:call).with(params).and_return([response])

      subject
    end
  end

  describe '#by_summoner_id' do
    subject { described_class.by_summoner_id(params) }

    let(:response) { instance_double(Hextech::League::Response::Clash::Player) }
    let(:params) { { summoner_id: '1234', region: 'euw1' } }

    it 'returns a Player response object' do
      expect(Hextech::League::Clash::BySummonerId).to receive(:call).with(params).and_return([response])

      subject
    end
  end

  describe '#by_tournament_id' do
    subject { described_class.by_tournament_id(params) }

    let(:response) { instance_double(Hextech::League::Response::Clash::Tournament) }
    let(:params) { { tournament_id: '1234', region: 'euw1' } }

    it 'returns a Tournament response object' do
      expect(Hextech::League::Clash::ByTournamentId).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#team_by_team_id' do
    subject { described_class.team_by_team_id(params) }

    let(:response) { instance_double(Hextech::League::Response::Clash::Team) }
    let(:params) { { team_id: '1234', region: 'euw1' } }

    it 'returns a Team response object' do
      expect(Hextech::League::Clash::TeamByTeamId).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#tournament_by_team_id' do
    subject { described_class.tournament_by_team_id(params) }

    let(:response) { instance_double(Hextech::League::Response::Clash::Tournament) }
    let(:params) { { team_id: '1234', region: 'euw1' } }

    it 'returns a Tournament response object' do
      expect(Hextech::League::Clash::TournamentByTeamId).to receive(:call).with(params).and_return(response)

      subject
    end
  end
end
