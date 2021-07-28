# frozen_string_literal: true

module RiotApi
  module League
    class Mastery < RiotApi::Adapter

      include RiotApi::League::ResponseAttributes

      def initialize(id:, region: 'euw1')
        @id = id
        @region = region
      end

      def call
        response = send_request

        wrap_response(response)
      end

      private

      attr_reader :id, :region

      def path
        "https://#{region}.api.riotgames.com/lol/champion-mastery/v4/champion-masteries/by-summoner/#{id}"
      end

      def wrap_response(response)
        response.map do |mastery|
          Response.with(mastery.transform_keys { _1.underscore.to_sym })
        end
      end

      class Response < Value.new(*ResponseAttributes::Mastery::ATTRIBUTES); end

    end
  end
end
