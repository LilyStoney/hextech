# frozen_string_literal: true

module RiotApi
  module League
    module Response
      class ChampionRotation < RiotApi::BaseStruct

        attribute :free_champion_ids, Types::Array
        attribute :free_champion_ids_for_new_players, Types::Array
        attribute :max_new_player_level, Types::Coercible::Integer

      end
    end
  end
end
