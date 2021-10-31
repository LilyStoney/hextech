# frozen_string_literal: true

module Hextech
  module League
    module Mastery
      class TotalScore < Hextech::League::Mastery::Base

        def initialize(summoner_id:, region:)
          @summoner_id = summoner_id
          @region = region

          super()
        end

        private

        attr_reader :summoner_id, :region

        def path
          "/lol/champion-mastery/v4/scores/by-summoner/#{summoner_id}"
        end

      end
    end
  end
end
