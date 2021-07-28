# frozen_string_literal: true

require_relative 'summoner/by_account_id'
require_relative 'summoner/by_puuid'
require_relative 'summoner/by_summoner_id'
require_relative 'summoner/by_summoner_name'

module RiotApi
  module League
    module Summoner
      include RiotApi::League::ResponseAttributes

      def call
        response = send_request

        Response.with(response.transform_keys { _1.underscore.to_sym })
      end

      class Response < Value.new(*ResponseAttributes::Summoner::ATTRIBUTES); end
    end
  end
end
