# frozen_string_literal: true

require_relative 'mastery/all_champions'
require_relative 'mastery/by_champion'
require_relative 'mastery/total_score'

module RiotApi
  module League
    module Mastery
      REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

      def call
        validate_collection_for(collection: REGIONS, option: region)
        wrap_response(send_request)
      end
    end
  end
end
