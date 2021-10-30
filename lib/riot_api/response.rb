# frozen_string_literal: true

module RiotApi
  class Response

    def initialize(response, response_class)
      @response = response
      @response_class = response_class
    end

    def call
      parse_response
        .then { wrap_response(_1) }
    end

    private

    attr_reader :response, :response_class

    def parse_response
      JSON.parse(response, symbolize_names: true).then { format_response(_1) }
    rescue JSON::ParserError, TypeError
      response
    end

    def format_response(parsed_response)
      return parsed_response if parsed_response.is_a?(Integer)

      parsed_response.to_symbolized_snake_keys
    end

    def wrap_response(response)
      return response unless response_class

      if response.is_a?(Array)
        response.map { response_class.new(_1) }
      else
        response_class.new(response)
      end
    end

  end
end
