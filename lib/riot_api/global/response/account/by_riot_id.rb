# frozen_string_literal: true

module RiotApi
  module Global
    module Response
      module Account
        class ByRiotId < RiotApi::BaseStruct

          attribute :puuid, Types::String
          attribute :game_name, Types::String
          attribute :tag_line, Types::String

        end
      end
    end
  end
end
