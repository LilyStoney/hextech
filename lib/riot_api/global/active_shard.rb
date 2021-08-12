# frozen_string_literal: true

module RiotApi
  module Global
    class ActiveShard < RiotApi::Adapter

      include RiotApi::Global::ResponseAttributes

      GAMES = %w[lor val].freeze
      REGIONS = %w[europe americas asia esports].freeze

      def initialize(game:, puuid:, region: 'europe')
        @game = game
        @puuid = puuid
        @region = region
      end

      def call
        validate_collection_for(collection: REGIONS, option: region)
        validate_collection_for(collection: GAMES, option: game)
        wrap_response(send_request)
      end

      private

      attr_reader :game, :puuid, :region

      def path
        "https://#{region}.api.riotgames.com/riot/account/v1/active-shards/by-game/#{game}/by-puuid/#{puuid}"
      end

      def wrap_response(response)
        Response.with(response.transform_keys { _1.underscore.to_sym })
      end

      class Response < Value.new(*ResponseAttributes::ActiveShard::ATTRIBUTES); end

    end
  end
end
