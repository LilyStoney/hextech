# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class BySummonerId < RiotApi::League::Clash::Base

        def initialize(summoner_id:, region:)
          @summoner_id = summoner_id
          @region = region
        end

        private

        attr_reader :summoner_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/clash/v1/players/by-summoner/#{summoner_id}"
        end

        def wrap_response(response)
          response.map do |player|
            data = format_response(player)
            RiotApi::League::Response::Clash::Player.new(data)
          end
        end

      end
    end
  end
end
