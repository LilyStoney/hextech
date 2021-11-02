# frozen_string_literal: true

module Hextech
  class SendRequest

    STATIC_HOST = 'https://ddragon.leagueoflegends.com'

    def initialize(host:, api_key:)
      @host = host
      @api_key = api_key
    end

    def call(path)
      client.get(path)
    end

    private

    attr_reader :host, :api_key

    def static_data?
      STATIC_HOST == host
    end

    def enable_logger?
      ENV.fetch('DEBUG_LOGGER', 'false') == 'true'
    end

    def client
      Faraday.new(url: host) do |faraday|
        faraday.params['api_key'] = api_key unless static_data?
        faraday.use Hextech::Errors

        if enable_logger?
          faraday.response :logger, nil, { headers: true, bodies: true } do |logger|
            logger.filter(/(api_key=)([a-zA-Z0-9-]*)/, '\1[REMOVED]')
          end
        end
      end
    end

  end
end
