# frozen_string_literal: true

module RiotApi
  module Global
    module Account
      class ByPUUID < RiotApi::Adapter

        include Global::Account

        def initialize(puuid:, region: 'europe')
          @puuid = puuid
          @region = region
        end

        private

        attr_reader :puuid, :region

        def path
          "https://#{region}.api.riotgames.com/riot/account/v1/accounts/by-puuid/#{puuid}"
        end

        def wrap_response(response)
          Response.with(response.transform_keys { _1.underscore.to_sym })
        end

        class Response < Value.new(*ResponseAttributes::Account::ByPUUID::ATTRIBUTES); end

      end
    end
  end
end
