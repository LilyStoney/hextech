# frozen_string_literal: true

module RiotApi
  module Global
    module Account
      class Base < RiotApi::Adapter

        REGIONS = %w[europe americas asia esports].freeze

        def call
          validate_collection_for(collection: REGIONS, option: region)
          wrap_response(send_request)
        end

      end
    end
  end
end
