# frozen_string_literal: true

RSpec.describe RiotApi::League::Champions, vcr: true do
  subject do
    VCR.use_cassette('league/champions') do
      described_class.call
    end
  end

  let(:response_file) { File.read('spec/fixtures/json/truncated_champions.json') }
  let(:symbolized_response) { JSON.parse(response_file).to_symbolized_snake_keys }

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to match a_hash_including(
        jinx: response_object_for(:jinx),
        kaisa: response_object_for(:kaisa),
        kalista: response_object_for(:kalista)
      )
    end
  end
end

def response_object_for(champion)
  data = symbolized_response[:data].dig(champion)

  RiotApi::League::Response::Champions.new(data)
end
