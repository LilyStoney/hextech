# frozen_string_literal: true

module RiotApi
  module League
    class ChampionRotation < RiotApi::Adapter

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def initialize(region: 'euw1')
        @region = region

        super()
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)

        super
      end

      private

      attr_reader :region

      def host
        "https://#{region}.api.riotgames.com"
      end

      def path
        '/lol/platform/v3/champion-rotations'
      end

      def response_class
        RiotApi::League::Response::ChampionRotation
      end

    end
  end
end
