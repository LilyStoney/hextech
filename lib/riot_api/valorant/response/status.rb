# frozen_string_literal: true

module RiotApi
  module Valorant
    module Response
      class Status < RiotApi::BaseStruct

        attribute :id, Types::String
        attribute :name, Types::String
        attribute :locales, Types::Array

        attribute :maintenances, Types::Array do
          attribute :id, Types::Integer
          attribute :maintenance_status, Types::String
          attribute :incident_severity, Types::String.optional

          attribute :titles, Types::Array do
            attribute :locale, Types::String
            attribute :content, Types::String
          end

          attribute :updates, Types::Array do
            attribute :id, Types::Integer
            attribute :author, Types::String
            attribute :publish, Types::Bool
            attribute :publish_locations, Types::Array
            attribute :translations, Types::Array
            attribute :created_at, Types::String
            attribute :updated_at, Types::String
          end

          attribute :created_at, Types::String
          attribute :archive_at, Types::String.optional
          attribute :updated_at, Types::String.optional
          attribute :platforms, Types::Array
        end

        attribute :incidents, Types::Array do
          attribute :id, Types::Integer
          attribute :maintenance_status, Types::String
          attribute :incident_severity, Types::String

          attribute :titles, Types::Array do
            attribute :locale, Types::String
            attribute :content, Types::String
          end

          attribute :updates, Types::Array do
            attribute :id, Types::Integer
            attribute :author, Types::String
            attribute :publish, Types::Bool
            attribute :publish_locations, Types::Array
            attribute :translations, Types::Array
            attribute :created_at, Types::String
            attribute :updated_at, Types::String.optional
          end

          attribute :created_at, Types::String
          attribute :archive_at, Types::String
          attribute :updated_at, Types::String.optional
          attribute :platforms, Types::Array
        end

      end
    end
  end
end
