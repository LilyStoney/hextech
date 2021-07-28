# frozen_string_literal: true

module RiotApi
  module League
    module Summoner
      class BySummonerId < RiotApi::Adapter

        include League::Summoner

        def initialize(summoner_id:, region: 'euw1')
          @summoner_id = summoner_id
          @region = region
        end

        private

        attr_reader :summoner_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/#{summoner_id}"
        end

      end
    end
  end
end
