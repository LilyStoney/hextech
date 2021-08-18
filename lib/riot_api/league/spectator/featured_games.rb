# frozen_string_literal: true

module RiotApi
  module League
    module Spectator
      class FeaturedGames < RiotApi::Adapter

        include League::Spectator

        def initialize(region: 'euw1')
          @region = region
        end

        private

        attr_reader :region

        def path
          "https://#{region}.api.riotgames.com/lol/spectator/v4/featured-games"
        end

        def wrap_response(response)
          data = format_response(response)
          RiotApi::League::Response::FeaturedGames.new(data)
        end

      end
    end
  end
end
