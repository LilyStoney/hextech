# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class TeamByTeamId < RiotApi::League::Clash::Base

        def initialize(team_id:, region:)
          @team_id = team_id
          @region = region

          super()
        end

        private

        attr_reader :team_id, :region

        def path
          "/lol/clash/v1/teams/#{team_id}"
        end

        def response_class
          RiotApi::League::Response::Clash::Team
        end

      end
    end
  end
end
