# frozen_string_literal: true

module Hextech
  module League
    module Spectator
      class Base < Hextech::Adapter

        REGIONS = %w[euw1 eun1 na1 oc1 kr br1 tr1 la2 la1 ru jp1].freeze

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
