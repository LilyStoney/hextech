# frozen_string_literal: true

module Hextech
  module League
    module Match
      class Timeline < Hextech::League::Match::Base

        def initialize(match_id:, region:)
          @match_id = match_id
          @region = region

          super()
        end

        private

        attr_reader :match_id, :region

        def path
          "/lol/match/v5/matches/#{match_id}/timeline"
        end

      end
    end
  end
end
