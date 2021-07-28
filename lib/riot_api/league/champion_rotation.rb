# frozen_string_literal: true

module RiotApi
  module League
    class ChampionRotation < RiotApi::Adapter

      ATTRIBUTES = %i[
        free_champion_ids
        free_champion_ids_for_new_players
        max_new_player_level
      ].freeze

      def initialize(region: 'euw1')
        @region = region
      end

      def call
        response = send_request

        Response.with(response.transform_keys { |key| key.underscore.to_sym })
      end

      private

      attr_reader :region

      def path
        "https://#{region}.api.riotgames.com/lol/platform/v3/champion-rotations"
      end

      class Response < Value.new(*RiotApi::League::ChampionRotation::ATTRIBUTES); end

    end
  end
end
