# frozen_string_literal: true

module RiotApi
  module League
    module ResponseAttributes
      module Mastery
        ATTRIBUTES = %i[
          champion_id
          champion_level
          champion_points
          champion_points_since_last_level
          champion_points_until_next_level
          chest_granted
          last_play_time
          summoner_id
          tokens_earned
        ].freeze
      end
    end
  end
end
