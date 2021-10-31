# frozen_string_literal: true

RSpec.describe Hextech::League::Match do
  let(:response) { double }

  describe '#by_match_id' do
    subject { described_class.by_match_id(params) }

    let(:params) { { match_id: '1234', region: 'EUROPE' } }

    it 'returns a response object' do
      expect(Hextech::League::Match::ByMatchId).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#by_puuid' do
    subject { described_class.by_puuid(params) }

    let(:params) { { puuid: '1234', region: 'EUROPE' } }

    it 'returns a response object' do
      expect(Hextech::League::Match::ByPuuid).to receive(:call).with(params).and_return(response)

      subject
    end
  end

  describe '#timeline' do
    subject { described_class.timeline(params) }

    let(:params) { { match_id: '1234', region: 'EUROPE' } }

    it 'returns a response object' do
      expect(Hextech::League::Match::Timeline).to receive(:call).with(params).and_return(response)

      subject
    end
  end
end
