# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class TeamByTeamId < RiotApi::Adapter

        include League::Clash

        def initialize(team_id:, region: 'euw1')
          @team_id = team_id
          @region = region
        end

        private

        attr_reader :team_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/clash/v1/teams/#{team_id}"
        end

        def wrap_response(response)
          data = format_response(response)
          RiotApi::League::Response::Clash::Team.new(data)
        end

      end
    end
  end
end
