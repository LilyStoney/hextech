# frozen_string_literal: true

module Hextech
  module League
    module Spectator
      class ActiveGames < Hextech::League::Spectator::Base

        def initialize(summoner_id:, region:)
          @summoner_id = summoner_id
          @region = region

          super()
        end

        private

        attr_reader :summoner_id, :region

        def path
          "/lol/spectator/v4/active-games/by-summoner/#{summoner_id}"
        end

        def response_class
          Hextech::League::Response::ActiveGames
        end

      end
    end
  end
end
