# frozen_string_literal: true

module RiotApi
  module League
    module Match
      class ByPuuid < RiotApi::League::Match::Base

        def initialize(puuid:, region:)
          @puuid = puuid
          @region = region
        end

        private

        attr_reader :puuid, :region

        def path
          "https://#{region}.api.riotgames.com/lol/match/v5/matches/by-puuid/#{puuid}/ids"
        end

      end
    end
  end
end
