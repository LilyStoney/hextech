# frozen_string_literal: true

require_relative 'mastery/base'
require_relative 'mastery/all_champions'
require_relative 'mastery/by_champion'
require_relative 'mastery/total_score'

module RiotApi
  module League
    module Mastery
      class << self

        def all_champions(summoner_id:, region: 'euw1')
          Mastery::AllChampions.call(summoner_id: summoner_id, region: region)
        end

        def by_champion(summoner_id:, champion_id:, region: 'euw1')
          Mastery::ByChampion.call(summoner_id: summoner_id, champion_id: champion_id, region: region)
        end

        def total_score(summoner_id:, region: 'euw1')
          Mastery::TotalScore.call(summoner_id: summoner_id, region: region)
        end

      end
    end
  end
end
