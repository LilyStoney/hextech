# frozen_string_literal: true

module RiotApi
  module Valorant
    class Status < RiotApi::Adapter

      REGIONS = %w[ap br eu kr latam na].freeze

      def initialize(region: 'eu')
        @region = region
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)
        wrap_response(send_request)
      end

      private

      attr_reader :region

      def path
        "https://#{region}.api.riotgames.com/val/status/v1/platform-data"
      end

      def wrap_response(response)
        data = format_response(response)
        RiotApi::Valorant::Response::Status.new(data)
      end

    end
  end
end
