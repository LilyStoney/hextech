# frozen_string_literal: true

module RiotApi
  module League
    module Match
      class ByMatchId < RiotApi::League::Match::Base

        def initialize(match_id:, region:)
          @match_id = match_id
          @region = region
        end

        private

        attr_reader :match_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/match/v5/matches/#{match_id}"
        end

      end
    end
  end
end
