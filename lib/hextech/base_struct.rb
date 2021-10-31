# frozen_string_literal: true

module Hextech
  class BaseStruct < Dry::Struct

    module Types
      include Dry.Types()
    end

    CallableTime = Types::Time.constructor { |value| Time.at(value / 1000) }

  end
end
