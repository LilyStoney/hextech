# frozen_string_literal: true

module RiotApi
  module League
    module ResponseAttributes
      module Summoner
        ATTRIBUTES = %i[
          account_id
          id
          name
          profile_icon_id
          puuid
          revision_date
          summoner_level
        ].freeze
      end
    end
  end
end
