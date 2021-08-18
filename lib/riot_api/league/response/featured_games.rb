# frozen_string_literal: true

module RiotApi
  module League
    module Response
      class FeaturedGames < RiotApi::BaseStruct

        attribute :game_list, Types::Array do
          attribute :game_mode, Types::String
          attribute :game_length, Types::Integer
          attribute :map_id, Types::Integer
          attribute :game_type, Types::String

          attribute :banned_champions, Types::Array do
            attribute :pick_turn, Types::Integer
            attribute :champion_id, Types::Integer
            attribute :team_id, Types::Integer
          end

          attribute :game_id, Types::Integer

          attribute :observers do
            attribute :encryption_key, Types::String
          end

          attribute :game_queue_config_id, Types::Integer
          attribute :game_start_time, Types::Integer

          attribute :participants, Types::Array do
            attribute :bot, Types::Bool
            attribute :spell2_id, Types::Integer
            attribute :profile_icon_id, Types::Integer
            attribute :summoner_name, Types::String
            attribute :champion_id, Types::Integer
            attribute :team_id, Types::Integer
            attribute :spell1_id, Types::Integer
          end

          attribute :platform_id, Types::String
        end

        attribute :client_refresh_interval, Types::Integer

      end
    end
  end
end
