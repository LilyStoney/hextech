# frozen_string_literal: true

module Hextech
  module League
    module Clash
      class ByTournamentId < Hextech::League::Clash::Base

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
          Hextech::League::Response::Clash::Tournament
        end

      end
    end
  end
end
