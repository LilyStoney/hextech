# frozen_string_literal: true

module RiotApi
  module Valorant
    class Status < RiotApi::Adapter

      include RiotApi::Valorant::ResponseAttributes

      REGIONS = %w[ap br eu kr latam na].freeze

      def initialize(region: 'eu')
        @region = region
      end

      def call
        check_region
        wrap_response(send_request)
      end

      private

      attr_reader :region

      def path
        "https://#{region}.api.riotgames.com/val/status/v1/platform-data"
      end

      def wrap_response(response)
        Response.with(response.transform_keys { _1.underscore.to_sym })
      end

      class Response < Value.new(*ResponseAttributes::Status::ATTRIBUTES); end
    end
  end
end
