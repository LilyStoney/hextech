# frozen_string_literal: true

require_relative 'clash/base'
require_relative 'clash/all_tournaments'
require_relative 'clash/by_summoner_id'
require_relative 'clash/by_tournament_id'
require_relative 'clash/team_by_team_id'
require_relative 'clash/tournament_by_team_id'

module Hextech
  module League
    module Clash
      class << self

        def all_tournaments(region: 'euw1')
          Clash::AllTournaments.call(region: region)
        end

        def by_summoner_id(summoner_id:, region: 'euw1')
          Clash::BySummonerId.call(summoner_id: summoner_id, region: region)
        end

        def by_tournament_id(tournament_id:, region: 'euw1')
          Clash::ByTournamentId.call(tournament_id: tournament_id, region: region)
        end

        def team_by_team_id(team_id:, region: 'euw1')
          Clash::TeamByTeamId.call(team_id: team_id, region: region)
        end

        def tournament_by_team_id(team_id:, region: 'euw1')
          Clash::TournamentByTeamId.call(team_id: team_id, region: region)
        end

      end
    end
  end
end
