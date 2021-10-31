# frozen_string_literal: true

module Hextech
  module League
    module Response
      module Clash
        class Tournament < Hextech::BaseStruct

          attribute :id, Types::Integer
          attribute :theme_id, Types::Integer
          attribute :name_key, Types::String
          attribute :name_key_secondary, Types::String

          attribute :schedule, Types::Array do
            attribute :id, Types::Integer
            attribute :registration_time, CallableTime
            attribute :start_time, CallableTime
            attribute :cancelled, Types::Bool
          end

        end
      end
    end
  end
end
