# frozen_string_literal: true

module RiotApi
  module League
    module Summoner
      class ByPuuid < RiotApi::League::Summoner::Base

        def initialize(puuid:, region:)
          @puuid = puuid
          @region = region
        end

        private

        attr_reader :puuid, :region

        def path
          "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/by-puuid/#{puuid}"
        end

      end
    end
  end
end
