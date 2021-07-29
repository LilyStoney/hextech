# frozen_string_literal: true

module RiotApi
  module League
    module Mastery
      class ByChampion < RiotApi::Adapter

        include League::Mastery

        def initialize(summoner_id:, champion_id:, region: 'euw1')
          @summoner_id = summoner_id
          @champion_id = champion_id
          @region = region
        end

        private

        attr_reader :summoner_id, :champion_id, :region

        def path
          "https://#{region}.api.riotgames.com/" \
            "lol/champion-mastery/v4/champion-masteries/by-summoner/#{summoner_id}/by-champion/#{champion_id}"
        end

        def wrap_response(response)
          Response.with(response.transform_keys { _1.underscore.to_sym })
        end

      end
    end
  end
end