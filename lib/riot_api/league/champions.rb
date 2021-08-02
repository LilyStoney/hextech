# frozen_string_literal: true

module RiotApi
  module League
    class Champions < RiotApi::Adapter

      include RiotApi::League::ResponseAttributes

      def initialize
        @latest_patch = RiotApi::League::Patches.new.latest
      end

      def call
        wrap_response(send_request)
      end

      private

      attr_reader :latest_patch

      def path
        "https://ddragon.leagueoflegends.com/cdn/#{latest_patch}/data/en_US/champion.json"
      end

      def wrap_response(response)
        response['data'].map do |_champion, data|
          Response.with(data.transform_keys { _1.underscore.to_sym })
        end
      end

      class Response < Value.new(*ResponseAttributes::Champions::ATTRIBUTES); end

    end
  end
end
