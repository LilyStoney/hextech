# frozen_string_literal: true

module RiotApi
  module Global
    module Account
      class ByPuuid < RiotApi::Global::Account::Base

        def initialize(puuid:, region:)
          @puuid = puuid
          @region = region
        end

        private

        attr_reader :puuid, :region

        def path
          "https://#{region}.api.riotgames.com/riot/account/v1/accounts/by-puuid/#{puuid}"
        end

        def wrap_response(response)
          data = format_response(response)
          RiotApi::Global::Response::Account::ByPuuid.new(data)
        end

      end
    end
  end
end
