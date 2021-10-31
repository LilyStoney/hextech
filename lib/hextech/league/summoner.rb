# frozen_string_literal: true

require_relative 'summoner/base'
require_relative 'summoner/by_account_id'
require_relative 'summoner/by_summoner_name'
require_relative 'summoner/by_puuid'
require_relative 'summoner/by_summoner_id'

module Hextech
  module League
    module Summoner
      class << self

        def by_account_id(account_id:, region: 'euw1')
          Summoner::ByAccountId.call(account_id: account_id, region: region)
        end

        def by_id(id:, region: 'euw1')
          Summoner::BySummonerId.call(id: id, region: region)
        end

        def by_name(name:, region: 'euw1')
          Summoner::BySummonerName.call(name: name, region: region)
        end

        def by_puuid(puuid:, region: 'euw1')
          Summoner::ByPuuid.call(puuid: puuid, region: region)
        end

      end
    end
  end
end
