# frozen_string_literal: true

module RiotApi
  module League
    module Response
      class Status < RiotApi::BaseStruct

        attribute :id, Types::String
        attribute :incidents, Types::Array
        attribute :locales, Types::Array
        attribute :maintenances, Types::Array
        attribute :name, Types::String

      end
    end
  end
end
