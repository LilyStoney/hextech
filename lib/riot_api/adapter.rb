# frozen_string_literal: true

module RiotApi
  class Adapter

    class << self

      def call(...)
        new(...).call
      end

    end

    def initialize(path:, region: 'euw1', params: {})
      @path = path
      @region = region
      @params = params
    end

    def call
      response = send_request

      raise Forbidden if response.forbidden?
      raise ServerError if response.server_error?

      response
    end

    private

    attr_reader :path, :region, :params

    def send_api_request
      raise ApiKeyMissing if api_key.blank?

      HTTParty.get(
        "https://#{region}.api.riotgames.com/lol/#{path}",
        { query: params.merge(api_key: api_key) }
      )
    end

    def api_key
      @api_key ||= ENV['RIOT_API_KEY']
    end

  end
end
