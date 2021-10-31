# frozen_string_literal: true

module Hextech
  module League
    module Clash
      class TournamentByTeamId < Hextech::League::Clash::Base

        def initialize(team_id:, region:)
          @team_id = team_id
          @region = region

          super()
        end

        private

        attr_reader :team_id, :region

        def path
          "/lol/clash/v1/tournaments/by-team/#{team_id}"
        end

        def response_class
          Hextech::League::Response::Clash::Tournament
        end

      end
    end
  end
end
