# frozen_string_literal: true

module RiotApi
  module League
    class Champions < RiotApi::Adapter

      def initialize
        @latest_patch = RiotApi::League::Patches.new.latest
      end

      def call
        response = format_response(send_request)

        wrap_response(response)
      end

      private

      attr_reader :latest_patch

      def path
        "https://ddragon.leagueoflegends.com/cdn/#{latest_patch}/data/en_US/champion.json"
      end

      def wrap_response(response)
        response[:data].map do |_champion, data|
          RiotApi::League::Response::Champions.new(data)
        end
      end

    end
  end
end
