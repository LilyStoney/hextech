# frozen_string_literal: true

RSpec.describe RiotApi::League::Patches, vcr: true do
  describe '.latest' do
    subject do
      VCR.use_cassette('league/patches') do
        described_class.new.latest
      end
    end

    it 'returns the latest patch' do
      expect(subject).to eq('3.0.0')
    end
  end

  describe '.previous' do
    subject do
      VCR.use_cassette('league/patches') do
        described_class.new.previous
      end
    end

    it 'returns the patch before last' do
      expect(subject).to eq('2.5.0')
    end
  end
end
