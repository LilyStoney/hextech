# frozen_string_literal: true

require_relative 'account/by_puuid'
require_relative 'account/by_riot_id'

module RiotApi
  module Global
    module Account
      REGIONS = %w[europe americas asia esports].freeze

      def call
        validate_collection_for(collection: REGIONS, option: region)
        wrap_response(send_request)
      end
    end
  end
end
