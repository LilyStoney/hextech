# frozen_string_literal: true

require_relative 'mastery/all_champions'
require_relative 'mastery/by_champion'
require_relative 'mastery/total_score'

module RiotApi
  module League
    module Mastery
      include RiotApi::League::ResponseAttributes

      def call
        response = send_request

        wrap_response(response)
      end

      class Response < Value.new(*ResponseAttributes::Mastery::ATTRIBUTES); end
    end
  end
end
