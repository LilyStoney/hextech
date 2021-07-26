# frozen_string_literal: true

require_relative 'riot_api/adapter'
require_relative 'riot_api/league/champions'
require_relative 'riot_api/league/mastery'
require_relative 'riot_api/league/patches'
require_relative 'riot_api/league/summoner'
require_relative 'riot_api/version'

module RiotApi
  class Forbidden < StandardError; end

  class ServerError < StandardError; end

  class ApiKeyMissing < StandardError

    def message
      'Missing API Key. Please ensure you store this as an Environment Variable RIOT_API_KEY.'
    end

  end
end
