# frozen_string_literal: true

require_relative 'match/by_puuid'
require_relative 'match/by_match_id'
require_relative 'match/timeline'

module RiotApi
  module League
    module Match
      REGIONS = %w[AMERICAS ASIA EUROPE].freeze

      def call
        validate_collection_for(collection: REGIONS, option: region)
        send_request
      end
    end
  end
end
