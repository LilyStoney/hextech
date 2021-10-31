# frozen_string_literal: true

require_relative 'match/base'
require_relative 'match/by_puuid'
require_relative 'match/by_match_id'
require_relative 'match/timeline'

module Hextech
  module League
    module Match
      class << self

        def by_match_id(match_id:, region: 'EUROPE')
          Match::ByMatchId.call(match_id: match_id, region: region)
        end

        def by_puuid(puuid:, region: 'EUROPE')
          Match::ByPuuid.call(puuid: puuid, region: region)
        end

        def timeline(match_id:, region: 'EUROPE')
          Match::Timeline.call(match_id: match_id, region: region)
        end

      end
    end
  end
end
