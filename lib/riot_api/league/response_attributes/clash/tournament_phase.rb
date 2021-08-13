# frozen_string_literal: true

module RiotApi
  module League
    module ResponseAttributes
      module Clash
        module TournamentPhase
          ATTRIBUTES = %i[
            id
            registration_time
            start_time
            cancelled
          ].freeze
        end
      end
    end
  end
end
