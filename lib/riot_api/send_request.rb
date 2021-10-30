# frozen_string_literal: true

module RiotApi
  class SendRequest

    def initialize(host:, api_key:)
      @host = host
      @api_key = api_key
    end

    def call(path)
      client.get(path)
    end

    private

    attr_reader :host, :api_key

    def client
      Faraday.new(url: host) do |faraday|
        faraday.params['api_key'] = api_key
      end
    end

  end
end
