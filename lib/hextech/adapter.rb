# frozen_string_literal: true

module Hextech
  class Adapter

    include Hextech::Mixins::ArgumentChecks
    include Hextech::Mixins::Callable

    def initialize
      @connection = Hextech::SendRequest.new(host: host, api_key: api_key)
    end

    def call
      connection
        .call(path)
        .then { |response| wrap_response(response, response_class) }
    end

    private

    attr_reader :connection

    def wrap_response(response, response_class)
      Hextech::Response.new(response.body, response_class).call
    end

    def response_class
      return unless defined?(@response_class)

      @response_class
    end

    def host
      raise NotImplementedError, 'Missing host attribute'
    end

    def path
      raise NotImplementedError, 'Missing path attribute'
    end

    def api_key
      @api_key ||= ENV.fetch('RIOT_API_KEY')
    end

  end
end
