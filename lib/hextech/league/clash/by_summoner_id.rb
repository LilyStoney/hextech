# frozen_string_literal: true

module Hextech
  module League
    module Clash
      class BySummonerId < Hextech::League::Clash::Base

        def initialize(summoner_id:, region:)
          @summoner_id = summoner_id
          @region = region

          super()
        end

        private

        attr_reader :summoner_id, :region

        def path
          "/lol/clash/v1/players/by-summoner/#{summoner_id}"
        end

        def response_class
          Hextech::League::Response::Clash::Player
        end

      end
    end
  end
end
