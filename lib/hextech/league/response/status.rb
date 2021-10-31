# frozen_string_literal: true

module Hextech
  module League
    module Response
      class Status < Hextech::BaseStruct

        attribute :id, Types::String
        attribute :incidents, Types::Array
        attribute :locales, Types::Array
        attribute :maintenances, Types::Array
        attribute :name, Types::String

      end
    end
  end
end
