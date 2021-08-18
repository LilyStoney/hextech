# frozen_string_literal: true

module RiotApi
  class Adapter

    include RiotApi::Mixins::ArgumentChecks

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
      raise NotFound if response.not_found?
      raise ServerError if response.server_error?

      response
    end

    private

    def format_response(response)
      response.deep_transform_keys { _1.underscore.to_sym }
    end

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
