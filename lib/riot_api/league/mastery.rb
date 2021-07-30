# frozen_string_literal: true

require_relative 'mastery/all_champions'
require_relative 'mastery/by_champion'
require_relative 'mastery/total_score'

module RiotApi
  module League
    module Mastery
      include RiotApi::League::ResponseAttributes

      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def call
        check_region
        wrap_response(send_request)
      end

      class Response < Value.new(*ResponseAttributes::Mastery::ATTRIBUTES); end
    end
  end
end
