# frozen_string_literal: true

module RiotApi
  module Valorant
    class Status < RiotApi::Adapter

      REGIONS = %w[ap br eu kr latam na].freeze

      def initialize(region: 'eu')
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
        '/val/status/v1/platform-data'
      end

      def response_class
        RiotApi::Valorant::Response::Status
      end
    end
  end
end
