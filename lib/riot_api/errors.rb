# frozen_string_literal: true

module RiotApi
  class Forbidden < StandardError; end

  class ServerError < StandardError; end

  class InvalidArgumentError < StandardError; end

  class ApiKeyMissing < StandardError

    def message
      'Missing API Key. Please ensure you store this as an Environment Variable RIOT_API_KEY.'
    end

  end
end
