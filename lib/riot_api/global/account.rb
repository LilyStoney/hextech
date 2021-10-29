# frozen_string_literal: true

require_relative 'account/base'
require_relative 'account/by_puuid'
require_relative 'account/by_riot_id'

module RiotApi
  module Global
    module Account
      class << self

        def by_puuid(puuid:, region: 'europe')
          Account::ByPuuid.call(puuid: puuid, region: region)
        end

        def by_riot_id(game_name:, tag_line:, region: 'europe')
          Account::ByRiotId.call(game_name: game_name, tag_line: tag_line, region: region)
        end

      end
    end
  end
end
