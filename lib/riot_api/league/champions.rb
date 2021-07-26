# frozen_string_literal: true

require 'open-uri'

module RiotApi
  module League
    class Champions < RiotApi::Adapter

      def initialize
        @latest_patch = RiotApi::League::Patches.new.latest
      end

      def call
        send_request
      end

      private

      attr_reader :latest_patch

      def path
        "https://ddragon.leagueoflegends.com/cdn/#{latest_patch}/data/en_US/champion.json"
      end

    end
  end
end
