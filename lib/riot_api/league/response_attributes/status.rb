# frozen_string_literal: true

module RiotApi
  module League
    module ResponseAttributes
      module Status
        ATTRIBUTES = %i[
          id
          incidents
          locales
          maintenances
          name
        ].freeze
      end
    end
  end
end
