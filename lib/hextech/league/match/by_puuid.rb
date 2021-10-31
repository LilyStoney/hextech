# frozen_string_literal: true

module Hextech
  module League
    module Match
      class ByPuuid < Hextech::League::Match::Base

        def initialize(puuid:, region:)
          @puuid = puuid
          @region = region

          super()
        end

        private

        attr_reader :puuid, :region

        def path
          "/lol/match/v5/matches/by-puuid/#{puuid}/ids"
        end

      end
    end
  end
end
