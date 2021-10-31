# frozen_string_literal: true

module Hextech
  module League
    module Summoner
      class ByAccountId < Hextech::League::Summoner::Base

        def initialize(account_id:, region:)
          @account_id = account_id
          @region = region

          super()
        end

        private

        attr_reader :account_id, :region

        def path
          "/lol/summoner/v4/summoners/by-account/#{account_id}"
        end

      end
    end
  end
end
