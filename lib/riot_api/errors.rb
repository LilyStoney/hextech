# frozen_string_literal: true

module RiotApi
  class Error < StandardError; end

  class Forbidden < RiotApi::Error; end

  class ServerError < RiotApi::Error; end

  class InvalidRegionError < RiotApi::Error; end

  class ApiKeyMissing < RiotApi::Error

    def message
      'Missing API Key. Please ensure you store this as an Environment Variable RIOT_API_KEY.'
    end

  end
end
