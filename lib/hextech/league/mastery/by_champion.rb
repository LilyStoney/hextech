# frozen_string_literal: true

module Hextech
  module League
    module Mastery
      class ByChampion < Hextech::League::Mastery::Base

        def initialize(summoner_id:, champion_id:, region:)
          @summoner_id = summoner_id
          @champion_id = champion_id
          @region = region

          super()
        end

        private

        attr_reader :summoner_id, :champion_id, :region

        def path
          "/lol/champion-mastery/v4/champion-masteries/by-summoner/#{summoner_id}/by-champion/#{champion_id}"
        end

        def response_class
          Hextech::League::Response::Mastery
        end

      end
    end
  end
end
