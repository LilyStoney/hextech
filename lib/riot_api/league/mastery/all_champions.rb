# frozen_string_literal: true

module RiotApi
  module League
    module Mastery
      class AllChampions < RiotApi::League::Mastery::Base

        def initialize(summoner_id:, region:)
          @summoner_id = summoner_id
          @region = region
        end

        private

        attr_reader :summoner_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/#{summoner_id}"
        end

        def wrap_response(response)
          response.map do |mastery|
            data = format_response(mastery)
            RiotApi::League::Response::Mastery.new(data)
          end
        end

      end
    end
  end
end
