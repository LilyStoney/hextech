# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class ByTournamentId < RiotApi::Adapter

        include League::Clash

        def initialize(tournament_id:, region: 'euw1')
          @tournament_id = tournament_id
          @region = region
        end

        private

        attr_reader :tournament_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/clash/v1/tournaments/#{tournament_id}"
        end

        def wrap_response(response)
          data = format_response(response)
          RiotApi::League::Response::Clash::Team.new(data)
        end

      end
    end
  end
end
