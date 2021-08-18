# frozen_string_literal: true

module RiotApi
  module League
    module Match
      class ByPuuid < RiotApi::Adapter

        include League::Match

        def initialize(puuid:, region: 'EUROPE')
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
