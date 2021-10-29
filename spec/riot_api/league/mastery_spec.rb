# frozen_string_literal: true

RSpec.describe RiotApi::League::Mastery do
  let(:response) { instance_double(RiotApi::League::Response::Mastery) }

  describe '#all_champions' do
    subject { described_class.all_champions(params) }

    let(:params) { { summoner_id: '1234', region: 'euw1' } }

    it 'returns a Mastery response object' do
      expect(RiotApi::League::Mastery::AllChampions).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#by_champion' do
    subject { described_class.by_champion(params) }

    let(:params) { { summoner_id: '1234', champion_id: '1', region: 'euw1' } }

    it 'returns a Mastery response object' do
      expect(RiotApi::League::Mastery::ByChampion).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#timeline' do
    subject { described_class.total_score(params) }

    let(:response) { OpenStruct.new(total_score: '100') }
    let(:params) { { summoner_id: '1234', region: 'euw1' } }

    it 'returns a Mastery response object' do
      expect(RiotApi::League::Mastery::TotalScore).to receive(:call).with(params).and_return(response)

      subject
    end
  end
end
