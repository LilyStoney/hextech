# frozen_string_literal: true

module RiotApi
  module Mixins
    module Regions
      def check_region
        return if regions.blank? || regions.include?(region)

        raise InvalidRegionError, "Invalid region: must be one of #{regions.join(', ')}."
      end

      def regions
        self.class::REGIONS
      end
    end
  end
end
