# frozen_string_literal: true

module RiotApi
  module League
    module Response
      class Summoner < RiotApi::BaseStruct

        attribute :account_id, Types::String
        attribute :id, Types::String
        attribute :name, Types::String
        attribute :profile_icon_id, Types::Integer
        attribute :puuid, Types::String
        attribute :revision_date, CallableTime
        attribute :summoner_level, Types::Integer

      end
    end
  end
end
