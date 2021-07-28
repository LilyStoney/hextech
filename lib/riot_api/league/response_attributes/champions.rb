# frozen_string_literal: true

module RiotApi
  module League
    module ResponseAttributes
      module Champions
        ATTRIBUTES = %i[
          blurb
          id
          image
          info
          key
          name
          partype
          stats
          tags
          title
          version
        ].freeze
      end
    end
  end
end
