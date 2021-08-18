# frozen_string_literal: true

module RiotApi
  module League
    module Spectator
      class ActiveGames < RiotApi::Adapter

        include League::Spectator

        def initialize(summoner_id:, region: 'euw1')
          @summoner_id = summoner_id
          @region = region
        end

        private

        attr_reader :summoner_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/spectator/v4/active-games/by-summoner/#{summoner_id}"
        end

        def wrap_response(response)
          data = format_response(response)
          RiotApi::League::Response::ActiveGames.new(data)
        end

      end
    end
  end
end
