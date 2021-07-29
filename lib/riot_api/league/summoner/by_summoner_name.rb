# frozen_string_literal: true

module RiotApi
  module League
    module Summoner
      class BySummonerName < RiotApi::Adapter

        include League::Summoner

        def initialize(summoner_name:, region: 'euw1')
          @summoner_name = summoner_name
          @region = region
        end

        private

        attr_reader :summoner_name, :region

        def path
          "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{clean_name}"
        end

        def clean_name
          ERB::Util.url_encode(summoner_name)
        end

      end
    end
  end
end
