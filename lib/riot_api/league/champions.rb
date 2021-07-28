# frozen_string_literal: true

require 'open-uri'

module RiotApi
  module League
    class Champions < RiotApi::Adapter

      ATTRIBUTES = %i[
        blurb
        id
        image
        info
        key
        name
        partype
        stats
        tags
        title
        version
      ].freeze

      def initialize
        @latest_patch = RiotApi::League::Patches.new.latest
      end

      def call
        response = send_request

        response['data'].map { |_champion, data| Response.with(data.transform_keys { |key| key.underscore.to_sym }) }
      end

      private

      attr_reader :latest_patch

      def path
        "https://ddragon.leagueoflegends.com/cdn/#{latest_patch}/data/en_US/champion.json"
      end

      class Response < Value.new(*RiotApi::League::Champions::ATTRIBUTES); end

    end
  end
end
