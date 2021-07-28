# frozen_string_literal: true

require 'values'

module RiotApi
  class Adapter

    class << self

      def call(...)
        new(...).call
      end

    end

    def send_request
      raise ApiKeyMissing if api_key.nil?

      response = HTTParty.get(
        path,
        { query: params.merge(api_key: api_key) }
      )

      raise Forbidden if response.forbidden?
      raise ServerError if response.server_error?

      response
    end

    private

    def params
      return @params if defined?(@params)

      {}
    end

    def path
      raise NotImplementedError, 'Missing path attribute'
    end

    def api_key
      @api_key ||= ENV['RIOT_API_KEY']
    end

  end
end
