# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class BySummonerId < RiotApi::League::Clash::Base

        def initialize(summoner_id:, region:)
          @summoner_id = summoner_id
          @region = region

          super()
        end

        private

        attr_reader :summoner_id, :region

        def path
          "/lol/clash/v1/players/by-summoner/#{summoner_id}"
        end

        def response_class
          RiotApi::League::Response::Clash::Player
        end

      end
    end
  end
end
