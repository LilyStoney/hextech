# frozen_string_literal: true

module RiotApi
  module League
    class ChampionRotation < RiotApi::Adapter

      include RiotApi::League::ResponseAttributes

      def initialize(region: 'euw1')
        @region = region
      end

      def call
        response = send_request

        wrap_response(response)
      end

      private

      attr_reader :region

      def path
        "https://#{region}.api.riotgames.com/lol/platform/v3/champion-rotations"
      end

      def wrap_response(response)
        Response.with(response.transform_keys { _1.underscore.to_sym })
      end

      class Response < Value.new(*ResponseAttributes::ChampionRotation::ATTRIBUTES); end

    end
  end
end
