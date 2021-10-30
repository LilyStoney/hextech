# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class ByTournamentId < RiotApi::League::Clash::Base

        def initialize(tournament_id:, region:)
          @tournament_id = tournament_id
          @region = region

          super()
        end

        private

        attr_reader :tournament_id, :region

        def path
          "/lol/clash/v1/tournaments/#{tournament_id}"
        end

        def response_class
          RiotApi::League::Response::Clash::Tournament
        end

      end
    end
  end
end
