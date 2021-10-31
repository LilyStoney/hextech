# frozen_string_literal: true

module Hextech
  module League
    module Response
      module Clash
        class Team < Hextech::BaseStruct

          attribute :id, Types::String
          attribute :tournament_id, Types::Integer
          attribute :name, Types::String
          attribute :icon_id, Types::Integer
          attribute :tier, Types::Integer
          attribute :captain, Types::String
          attribute :abbreviation, Types::String

          attribute :players, Types::Array do
            attribute :summoner_id, Types::String
            attribute :position, Types::String
            attribute :role, Types::String
          end

        end
      end
    end
  end
end
