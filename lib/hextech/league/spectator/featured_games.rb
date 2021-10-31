# frozen_string_literal: true

module Hextech
  module League
    module Spectator
      class FeaturedGames < Hextech::League::Spectator::Base

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
          Hextech::League::Response::FeaturedGames
        end

      end
    end
  end
end
