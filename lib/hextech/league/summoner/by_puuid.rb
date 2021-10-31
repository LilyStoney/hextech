# frozen_string_literal: true

module Hextech
  module League
    module Summoner
      class ByPuuid < Hextech::League::Summoner::Base

        def initialize(puuid:, region:)
          @puuid = puuid
          @region = region

          super()
        end

        private

        attr_reader :puuid, :region

        def path
          "/lol/summoner/v4/summoners/by-puuid/#{puuid}"
        end

      end
    end
  end
end
