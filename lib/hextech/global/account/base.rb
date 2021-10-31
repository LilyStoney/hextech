# frozen_string_literal: true

module Hextech
  module Global
    module Account
      class Base < Hextech::Adapter

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
