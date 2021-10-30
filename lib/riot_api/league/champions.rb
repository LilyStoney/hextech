# frozen_string_literal: true

module RiotApi
  module League
    class Champions < RiotApi::Adapter

      def initialize
        @latest_patch = RiotApi::League::Patches.new.latest

        super()
      end

      def call
        response = super

        response[:data].each_with_object({}) do |(champion, data), hash|
          hash[champion] = RiotApi::League::Response::Champions.new(data)
        end
      end

      private

      attr_reader :latest_patch

      def host
        'https://ddragon.leagueoflegends.com'
      end

      def path
        "/cdn/#{latest_patch}/data/en_US/champion.json"
      end

    end
  end
end
