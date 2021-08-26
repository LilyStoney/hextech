# frozen_string_literal: true

module RiotApi
  module League
    module Summoner
      class BySummonerId < RiotApi::League::Summoner::Base

        def initialize(id:, region:)
          @id = id
          @region = region
        end

        private

        attr_reader :id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/#{id}"
        end

      end
    end
  end
end
