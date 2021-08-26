# frozen_string_literal: true

module RiotApi
  module League
    class ThirdPartyCode < RiotApi::Adapter

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def initialize(summoner_id:, region: 'euw1')
        @summoner_id = summoner_id
        @region = region
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)

        response = send_request

        raise ThirdPartyCodeError, 'There is no code for the given summoner or it expired' if response.not_found?

        response.body
      end

      private

      attr_reader :summoner_id, :region

      def path
        "https://#{region}.api.riotgames.com/lol/platform/v4/third-party-code/by-summoner/#{summoner_id}"
      end

    end
  end
end
