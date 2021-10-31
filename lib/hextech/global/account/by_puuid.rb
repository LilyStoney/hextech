# frozen_string_literal: true

module Hextech
  module Global
    module Account
      class ByPuuid < Hextech::Global::Account::Base

        def initialize(puuid:, region:)
          @puuid = puuid
          @region = region

          super()
        end

        private

        attr_reader :puuid, :region

        def path
          "/riot/account/v1/accounts/by-puuid/#{puuid}"
        end

        def response_class
          Hextech::Global::Response::Account::ByPuuid
        end

      end
    end
  end
end
