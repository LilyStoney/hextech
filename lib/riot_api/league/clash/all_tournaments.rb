# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class AllTournaments < RiotApi::Adapter

        include League::Clash

        def initialize(region: 'euw1')
          @region = region
        end

        private

        attr_reader :region

        def path
          "https://#{region}.api.riotgames.com/lol/clash/v1/tournaments"
        end

        def wrap_response(response)
          response.map do |tournament|
            Response.with(tournament.transform_keys { _1.underscore.to_sym })
          end
        end

        class Response < Value.new(*ResponseAttributes::Clash::Tournament::ATTRIBUTES); end

      end
    end
  end
end
