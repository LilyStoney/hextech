# frozen_string_literal: true

module RiotApi
  module League
    class ChampionRotation < RiotApi::Adapter

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def initialize(region: 'euw1')
        @region = region
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)

        response = format_response(send_request)

        RiotApi::League::Response::ChampionRotation.new(response)
      end

      private

      attr_reader :region

      def path
        "https://#{region}.api.riotgames.com/lol/platform/v3/champion-rotations"
      end

    end
  end
end
