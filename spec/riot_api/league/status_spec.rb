# frozen_string_literal: true

RSpec.describe RiotApi::League::Status, vcr: true do
  subject do
    VCR.use_cassette('league/status') do
      described_class.call(region: 'euw1')
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to have_attributes(
        id: 'EUW1',
        incidents: [],
        locales: %w[de_DE en_GB es_ES fr_FR it_IT],
        maintenances: [],
        name: 'EU West'
      )
    end
  end
end
