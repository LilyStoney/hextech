# frozen_string_literal: true

module RiotApi
  module League
    module Match
      class Base < RiotApi::Adapter

        REGIONS = %w[AMERICAS ASIA EUROPE].freeze

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
