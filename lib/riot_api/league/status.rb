# frozen_string_literal: true

module RiotApi
  module League
    class Status < RiotApi::Adapter

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def initialize(region: 'euw1')
        @region = region
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)
        wrap_response(send_request)
      end

      private

      attr_reader :region

      def path
        "https://#{region}.api.riotgames.com/lol/status/v4/platform-data"
      end

      def wrap_response(response)
        data = format_response(response)
        RiotApi::League::Response::Status.new(data)
      end

    end
  end
end
