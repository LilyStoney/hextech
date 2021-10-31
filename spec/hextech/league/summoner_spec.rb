# frozen_string_literal: true

RSpec.describe Hextech::League::Summoner do
  let(:response) { instance_double(Hextech::League::Response::Summoner) }

  describe '#by_account_id' do
    subject { described_class.by_account_id(params) }

    let(:params) { { account_id: '1234', region: 'euw1' } }

    it 'returns a Summoner response object' do
      expect(Hextech::League::Summoner::ByAccountId).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#by_id' do
    subject { described_class.by_id(params) }

    let(:params) { { id: '1234', region: 'euw1' } }

    it 'returns a Summoner response object' do
      expect(Hextech::League::Summoner::BySummonerId).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#by_name' do
    subject { described_class.by_name(params) }

    let(:params) { { name: 'Example', region: 'euw1' } }

    it 'returns a Summoner response object' do
      expect(Hextech::League::Summoner::BySummonerName).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#by_puuid' do
    subject { described_class.by_puuid(params) }

    let(:params) { { puuid: '1234', region: 'euw1' } }

    it 'returns a Summoner response object' do
      expect(Hextech::League::Summoner::ByPuuid).to receive(:call).with(params).and_return(response)

      subject
    end
  end
end
