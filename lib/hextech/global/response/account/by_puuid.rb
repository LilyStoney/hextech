# frozen_string_literal: true

module Hextech
  module Global
    module Response
      module Account
        class ByPuuid < Hextech::BaseStruct

          attribute :puuid, Types::String
          attribute :game_name, Types::String
          attribute :tag_line, Types::String

        end
      end
    end
  end
end
