# frozen_string_literal: true

module Hextech
  module Global
    class ActiveShard < Hextech::Adapter

      GAMES = %w[lor val].freeze
      REGIONS = %w[europe americas asia esports].freeze

      def initialize(game:, puuid:, region: 'europe')
        @game = game
        @puuid = puuid
        @region = region

        super()
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)
        validate_collection_for(collection: GAMES, option: game)

        super
      end

      private

      attr_reader :game, :puuid, :region

      def path
        "/riot/account/v1/active-shards/by-game/#{game}/by-puuid/#{puuid}"
      end

      def host
        "https://#{region}.api.riotgames.com"
      end

      def response_class
        Hextech::Global::Response::ActiveShard
      end

    end
  end
end
