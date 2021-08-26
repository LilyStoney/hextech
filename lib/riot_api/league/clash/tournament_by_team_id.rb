# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class TournamentByTeamId < RiotApi::League::Clash::Base

        def initialize(team_id:, region:)
          @team_id = team_id
          @region = region
        end

        private

        attr_reader :team_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/clash/v1/tournaments/by-team/#{team_id}"
        end

        def wrap_response(response)
          data = format_response(response)
          RiotApi::League::Response::Clash::Tournament.new(data)
        end

      end
    end
  end
end
