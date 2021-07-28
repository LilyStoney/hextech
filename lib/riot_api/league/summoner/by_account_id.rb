# frozen_string_literal: true

module RiotApi
  module League
    module Summoner
      class ByAccountId < Base

        def initialize(account_id:, region: 'euw1')
          @account_id = account_id
          @region = region
        end

        private

        attr_reader :account_id, :region

        def path
          "https://#{region}.api.riotgames.com/lol/summoner/v4/summoners/by-account/#{account_id}"
        end

      end
    end
  end
end
