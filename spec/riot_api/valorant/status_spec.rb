# frozen_string_literal: true

RSpec.describe RiotApi::Valorant::Status, vcr: true do
  subject do
    VCR.use_cassette('valorant/status') do
      described_class.call(region: 'eu')
    end
  end

  let(:response_file) { File.read('spec/fixtures/json/valorant_status.json') }
  let(:symbolized_response) { JSON.parse(response_file).to_symbolized_snake_keys }
  let(:response_object) { RiotApi::Valorant::Response::Status.new(symbolized_response) }

  describe '.call' do
    it 'returns a response object' do
      expect(subject).to eq(response_object)
    end
  end
end
