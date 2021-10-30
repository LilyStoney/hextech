# frozen_string_literal: true

module RiotApi
  module Global
    module Account
      class Base < RiotApi::Adapter

        REGIONS = %w[europe americas asia esports].freeze

        def call
          validate_collection_for(collection: REGIONS, option: region)

          super
        end

        private

        def host
          "https://#{region}.api.riotgames.com"
        end

      end
    end
  end
end
