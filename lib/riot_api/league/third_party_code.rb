# frozen_string_literal: true

module RiotApi
  module League
    class ThirdPartyCode < RiotApi::Adapter

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def initialize(summoner_id:, region: 'euw1')
        @summoner_id = summoner_id
        @region = region

        super()
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)

        super
      end

      private

      attr_reader :summoner_id, :region

      def host
        "https://#{region}.api.riotgames.com"
      end

      def path
        "/lol/platform/v4/third-party-code/by-summoner/#{summoner_id}"
      end

    end
  end
end
