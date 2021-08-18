# frozen_string_literal: true

module RiotApi
  module Global
    module Response
      class ActiveShard < RiotApi::BaseStruct

        attribute :puuid, Types::String
        attribute :game, Types::String
        attribute :active_shard, Types::String

      end
    end
  end
end
