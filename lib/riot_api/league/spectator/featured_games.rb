# frozen_string_literal: true

module RiotApi
  module League
    module Spectator
      class FeaturedGames < RiotApi::League::Spectator::Base

        def initialize(region:)
          @region = region

          super()
        end

        private

        attr_reader :region

        def path
          '/lol/spectator/v4/featured-games'
        end

        def response_class
          RiotApi::League::Response::FeaturedGames
        end

      end
    end
  end
end
