# frozen_string_literal: true

require_relative 'spectator/base'
require_relative 'spectator/active_games'
require_relative 'spectator/featured_games'

module Hextech
  module League
    module Spectator
      class << self

        def active_games(summoner_id:, region: 'euw1')
          Spectator::ActiveGames.call(summoner_id: summoner_id, region: region)
        end

        def featured_games(region: 'euw1')
          Spectator::FeaturedGames.call(region: region)
        end

      end
    end
  end
end
