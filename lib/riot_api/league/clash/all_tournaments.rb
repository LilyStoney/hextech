# frozen_string_literal: true

module RiotApi
  module League
    module Clash
      class AllTournaments < RiotApi::League::Clash::Base

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
          RiotApi::League::Response::Clash::Tournament
        end

      end
    end
  end
end
