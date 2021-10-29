# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class AllTournaments < RiotApi::League::Clash::Base

        def initialize(region:)
          @region = region
        end

        private

        attr_reader :region

        def path
          "https://#{region}.api.riotgames.com/lol/clash/v1/tournaments"
        end

        def wrap_response(response)
          response.map do |tournament|
            data = format_response(tournament)
            RiotApi::League::Response::Clash::Tournament.new(data)
          end
        end

      end
    end
  end
end
