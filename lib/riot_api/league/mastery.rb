# frozen_string_literal: true

require 'values'

module RiotApi
  module League
    class Mastery < RiotApi::Adapter

      ATTRIBUTES = %i[
        champion_id
        champion_level
        champion_points
        champion_points_since_last_level
        champion_points_until_next_level
        chest_granted
        last_play_time
        summoner_id
        tokens_earned
      ].freeze

      def initialize(id:, region:)
        @id = id
        @region = region
      end

      def call
        response = send_request

        response.map { |mastery| Response.with(mastery.transform_keys { |key| key.underscore.to_sym }) }
      end

      private

      attr_reader :id, :region

      def path
        "champion-mastery/v4/champion-masteries/by-summoner/#{id}"
      end

      class Response < Values.new(*RiotApi::League::Mastery::ATTRIBUTES); end

    end
  end
end
