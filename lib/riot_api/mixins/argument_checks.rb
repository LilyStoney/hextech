# frozen_string_literal: true

module RiotApi
  module Mixins
    module ArgumentChecks
      def validate_collection_for(collection:, option:)
        return if collection.blank? || collection.include?(option)

        raise InvalidArgumentError, "Invalid argument: must be one of #{collection.join(', ')}."
      end
    end
  end
end
