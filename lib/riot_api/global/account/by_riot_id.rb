# frozen_string_literal: true

module RiotApi
  module Global
    module Account
      class ByRiotId < RiotApi::Global::Account::Base

        def initialize(game_name:, tag_line:, region:)
          @game_name = game_name
          @tag_line = tag_line
          @region = region

          super()
        end

        private

        attr_reader :game_name, :tag_line, :region

        def path
          "/riot/account/v1/accounts/by-riot-id/#{clean_name}/#{tag_line}"
        end

        def clean_name
          ERB::Util.url_encode(game_name)
        end

        def response_class
          RiotApi::Global::Response::Account::ByRiotId
        end

      end
    end
  end
end
