# frozen_string_literal: true

module Hextech
  module Global
    module Response
      class ActiveShard < Hextech::BaseStruct

        attribute :puuid, Types::String
        attribute :game, Types::String
        attribute :active_shard, Types::String

      end
    end
  end
end
