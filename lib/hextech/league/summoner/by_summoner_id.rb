# frozen_string_literal: true

module Hextech
  module League
    module Summoner
      class BySummonerId < Hextech::League::Summoner::Base

        def initialize(id:, region:)
          @id = id
          @region = region

          super()
        end

        private

        attr_reader :id, :region

        def path
          "/lol/summoner/v4/summoners/#{id}"
        end

      end
    end
  end
end
