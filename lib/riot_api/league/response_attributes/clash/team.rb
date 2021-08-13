# frozen_string_literal: true

module RiotApi
  module League
    module ResponseAttributes
      module Clash
        module Team
          ATTRIBUTES = %i[
            id
            tournament_id
            name
            icon_id
            tier
            captain
            abbreviation
            players
          ].freeze
        end
      end
    end
  end
end
