# frozen_string_literal: true

module Hextech
  module League
    module Clash
      class AllTournaments < Hextech::League::Clash::Base

        def initialize(region:)
          @region = region

          super()
        end

        private

        attr_reader :region

        def path
          '/lol/clash/v1/tournaments'
        end

        def response_class
          Hextech::League::Response::Clash::Tournament
        end

      end
    end
  end
end
