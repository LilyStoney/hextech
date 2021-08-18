# frozen_string_literal: true

module RiotApi
  module Global
    module Response
      module Account
        class ByRiotId < RiotApi::BaseStruct

          attribute :puuid, Types::String

        end
      end
    end
  end
end
