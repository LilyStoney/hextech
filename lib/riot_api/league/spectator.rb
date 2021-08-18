# frozen_string_literal: true

require_relative 'spectator/active_games'
require_relative 'spectator/featured_games'

module RiotApi
  module League
    module Spectator
      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def call
        validate_collection_for(collection: REGIONS, option: region)
        wrap_response(send_request)
      end
    end
  end
end
