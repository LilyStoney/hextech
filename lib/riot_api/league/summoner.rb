# frozen_string_literal: true

require 'values'

module RiotApi
  module League
    class Summoner < RiotApi::Adapter

      ATTRIBUTES = %i[
        account_id
        id
        name
        profile_icon_id
        puuid
        revision_date
        summoner_level
      ].freeze

      def initialize(name:, region:)
        @name = name
        @region = region
      end

      def call
        response = send_request

        Response.with(response.transform_keys { |key| key.underscore.to_sym })
      end

      private

      attr_reader :name, :region

      def clean_name
        ERB::Util.url_encode(name)
      end

      def path
        "summoner/v4/summoners/by-name/#{clean_name}"
      end

      class Response < Value.new(*RiotApi::League::Summoner::ATTRIBUTES); end

    end
  end
end
