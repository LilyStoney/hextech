# frozen_string_literal: true

module RiotApi
  module Global
    module ResponseAttributes
      module Account
        module ByPUUID
          ATTRIBUTES = %i[
            puuid
            game_name
            tag_line
          ].freeze
        end
      end
    end
  end
end
