# frozen_string_literal: true

module RiotApi
  module League
    module Summoner
      class Base < RiotApi::Adapter

        include RiotApi::League::ResponseAttributes

        def call
          response = send_request

          Response.with(response.transform_keys { |key| key.underscore.to_sym })
        end

        class Response < Value.new(*ResponseAttributes::Summoner::ATTRIBUTES); end

      end
    end
  end
end
