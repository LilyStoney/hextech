# frozen_string_literal: true

module RiotApi
  module League
    module ResponseAttributes
      module ChampionRotation
        ATTRIBUTES = %i[
          free_champion_ids
          free_champion_ids_for_new_players
          max_new_player_level
        ].freeze
      end
    end
  end
end
