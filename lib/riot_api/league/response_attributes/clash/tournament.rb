# frozen_string_literal: true

module RiotApi
  module League
    module ResponseAttributes
      module Clash
        module Tournament
          ATTRIBUTES = %i[
            id
            theme_id
            name_key
            name_key_secondary
            schedule
          ].freeze
        end
      end
    end
  end
end
