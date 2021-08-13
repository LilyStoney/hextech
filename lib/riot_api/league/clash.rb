# frozen_string_literal: true

require_relative 'clash/all_tournaments'
require_relative 'clash/by_summoner_id'
require_relative 'clash/by_tournament_id'
require_relative 'clash/team_by_team_id'
require_relative 'clash/tournament_by_team_id'

module RiotApi
  module League
    module Clash
      include RiotApi::League::ResponseAttributes

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def call
        validate_collection_for(collection: REGIONS, option: region)
        wrap_response(send_request)
      end
    end
  end
end
