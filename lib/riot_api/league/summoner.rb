# frozen_string_literal: true

require_relative 'summoner/by_account_id'
require_relative 'summoner/by_puuid'
require_relative 'summoner/by_summoner_id'
require_relative 'summoner/by_summoner_name'

module RiotApi
  module League
    module Summoner
      include RiotApi::League::ResponseAttributes

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def call
        check_region
        wrap_response(send_request)
      end

      def wrap_response(response)
        Response.with(response.transform_keys { _1.underscore.to_sym })
      end

      class Response < Value.new(*ResponseAttributes::Summoner::ATTRIBUTES); end
    end
  end
end
