# frozen_string_literal: true

module RiotApi
  module Mixins
    module ArgumentChecks
      def validate_collection_for(collection:, option:)
        return if collection.empty? || collection.include?(option)

        raise RiotApi::InvalidArgument, "Invalid argument: must be one of #{collection.join(', ')}."
      end
    end
  end
end
