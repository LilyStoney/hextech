# frozen_string_literal: true

require_relative 'account/by_puuid'
require_relative 'account/by_riot_id'

module RiotApi
  module Global
    module Account
      include RiotApi::Global::ResponseAttributes

      REGIONS = %w[europe americas asia esports].freeze

      def call
        check_region

        response = send_request

        wrap_response(response)
      end

      private

      def check_region
        return if REGIONS.include?(region)

        raise InvalidRegionError, 'Invalid region: must be europe, americas, asia or esports'
      end
    end
  end
end
