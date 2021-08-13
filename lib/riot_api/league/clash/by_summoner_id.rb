# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class BySummonerId < RiotApi::Adapter

        include League::Clash

        def initialize(summoner_id:, region: 'euw1')
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
            Response.with(player.transform_keys { _1.underscore.to_sym })
          end
        end

        class Response < Value.new(*ResponseAttributes::Clash::Player::ATTRIBUTES); end

      end
    end
  end
end
