# frozen_string_literal: true

module RiotApi
  module League
    module Response
      module Clash
        class Team < RiotApi::BaseStruct

          attribute :id, Types::Integer
          attribute :tournament_id, Types::Integer
          attribute :name, Types::String
          attribute :icon_id, Types::Integer
          attribute :tier, Types::String
          attribute :captain, Types::String
          attribute :abbreviation, Types::String

          attribute :players do
            attribute :summoner_id, Types::Integer
            attribute :position, Types::String
            attribute :role, Types::String
          end

        end
      end
    end
  end
end
