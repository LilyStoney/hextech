# frozen_string_literal: true

module RiotApi
  module Global
    module Account
      class ByRiotId < RiotApi::Adapter

        include Global::Account

        def initialize(game_name:, tag_line:, region: 'europe')
          @game_name = game_name
          @tag_line = tag_line
          @region = region
        end

        private

        attr_reader :game_name, :tag_line, :region

        def path
          "https://#{region}.api.riotgames.com/riot/account/v1/accounts/by-riot-id/#{game_name}/#{tag_line}"
        end

        def wrap_response(response)
          data = format_response(response)
          RiotApi::Global::Response::Account::ByRiotId.new(data)
        end

      end
    end
  end
end
