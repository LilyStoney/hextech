# frozen_string_literal: true

RSpec.describe Hextech::Global::Account do
  describe '#by_puuid' do
    subject { described_class.by_puuid(params) }

    let(:response) { instance_double(Hextech::Global::Response::Account::ByPuuid) }
    let(:params) { { puuid: '1234', region: 'europe' } }

    it 'returns a response object' do
      expect(Hextech::Global::Account::ByPuuid).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#by_riot_id' do
    subject { described_class.by_riot_id(params) }

    let(:response) { instance_double(Hextech::Global::Response::Account::ByRiotId) }
    let(:params) { { game_name: 'Example', tag_line: 'euw1', region: 'europe' } }

    it 'returns a response object' do
      expect(Hextech::Global::Account::ByRiotId).to receive(:call).with(params).and_return(response)

      subject
    end
  end
end
