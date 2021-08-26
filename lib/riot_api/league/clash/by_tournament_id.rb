# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class ByTournamentId < RiotApi::League::Clash::Base

        def initialize(tournament_id:, region:)
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
          RiotApi::League::Response::Clash::Tournament.new(data)
        end

      end
    end
  end
end
