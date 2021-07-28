# frozen_string_literal: true

module RiotApi
  module Global
    module ResponseAttributes
      module ActiveShard
        ATTRIBUTES = %i[
          puuid
          game
          active_shard
        ].freeze
      end
    end
  end
end
