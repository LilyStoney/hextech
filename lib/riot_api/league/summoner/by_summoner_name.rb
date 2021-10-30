# frozen_string_literal: true

module RiotApi
  module League
    module Summoner
      class BySummonerName < RiotApi::League::Summoner::Base

        def initialize(name:, region:)
          @name = name
          @region = region

          super()
        end

        private

        attr_reader :name, :region

        def path
          "/lol/summoner/v4/summoners/by-name/#{clean_name}"
        end

        def clean_name
          ERB::Util.url_encode(name)
        end

      end
    end
  end
end
