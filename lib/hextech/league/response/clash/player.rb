# frozen_string_literal: true

module Hextech
  module League
    module Response
      module Clash
        class Player < Hextech::BaseStruct

          attribute :position, Types::String
          attribute :role, Types::String
          attribute :summoner_id, Types::Integer
          attribute :team_id, Types::Integer

        end
      end
    end
  end
end
