# frozen_string_literal: true

module RiotApi
  module League
    module Response
      class Mastery < RiotApi::BaseStruct

        attribute :champion_id, Types::Integer
        attribute :champion_level, Types::Integer
        attribute :champion_points, Types::Integer
        attribute :champion_points_since_last_level, Types::Integer
        attribute :champion_points_until_next_level, Types::Integer
        attribute :chest_granted, Types::Bool
        attribute :last_play_time, CallableTime
        attribute :summoner_id, Types::String
        attribute :tokens_earned, Types::Integer

      end
    end
  end
end
