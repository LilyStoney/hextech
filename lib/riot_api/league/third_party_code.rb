# frozen_string_literal: true

module RiotApi
  module League
    class ThirdPartyCode < RiotApi::Adapter

      include RiotApi::League::ResponseAttributes

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def initialize(summoner_id:, region: 'euw1')
        @summoner_id = summoner_id
        @region = region
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)

        response = send_request

        raise ThirdPartyCodeError, 'There is no code for the given summoner or it expired' if response.not_found?

        wrap_response(response)
      end

      private

      attr_reader :summoner_id, :region

      def path
        "https://#{region}.api.riotgames.com/lol/platform/v4/third-party-code/by-summoner/#{summoner_id}"
      end

      def wrap_response(response)
        Response.with(third_party_code: response)
      end

      class Response < Value.new(:third_party_code); end

    end
  end
end
