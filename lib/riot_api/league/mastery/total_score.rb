# frozen_string_literal: true

module RiotApi
  module League
    module Mastery
      class TotalScore < RiotApi::League::Mastery::Base

        def initialize(summoner_id:, region:)
          @summoner_id = summoner_id
          @region = region
        end

        private

        attr_reader :summoner_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/champion-mastery/v4/scores/by-summoner/#{summoner_id}"
        end

        def wrap_response(response)
          OpenStruct.new(total_score: response.body)
        end

      end
    end
  end
end
