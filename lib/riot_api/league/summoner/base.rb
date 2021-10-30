# frozen_string_literal: true

module RiotApi
  module League
    module Summoner
      class Base < RiotApi::Adapter

        REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

        def call
          validate_collection_for(collection: REGIONS, option: region)

          super
        end

        private

        def host
          "https://#{region}.api.riotgames.com"
        end

        def response_class
          RiotApi::League::Response::Summoner
        end

      end
    end
  end
end