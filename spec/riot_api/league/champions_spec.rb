# frozen_string_literal: true

RSpec.describe RiotApi::League::Champions, vcr: true do
  subject do
    VCR.use_cassette('league/champions') do
      described_class.call
    end
  end

  let(:response_file) { File.read('spec/fixtures/json/truncated_champions.json') }
  let(:symbolized_response) { JSON.parse(response_file).to_symbolized_snake_keys }
  let(:response_objects) do
    symbolized_response[:data].map do |_champion, data|
      RiotApi::League::Response::Champions.new(data)
    end
  end

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to eq(response_objects)
    end
  end
end
