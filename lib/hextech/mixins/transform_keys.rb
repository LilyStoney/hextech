# frozen_string_literal: true

module Hextech
  module Mixins
    module TransformKeys
      def to_symbolized_snake_keys(value = self)
        case value
        when Array
          value.map { |v| to_symbolized_snake_keys(v) }
        when Hash
          snake_hash(value)
        else
          value
        end
      end

      private

      def snake_hash(value)
        value.map { |k, v| [symbolize_and_underscore_key(k), to_symbolized_snake_keys(v)] }.to_h
      end

      def symbolize_and_underscore_key(key)
        key_to_transform = case key
                           when Symbol
                             underscore(key.to_s)
                           when String
                             underscore(key)
                           else
                             key
                           end

        key_to_transform.to_sym
      end

      def underscore(string)
        @__memoize_underscore ||= {}

        return @__memoize_underscore[string] if @__memoize_underscore[string]

        @__memoize_underscore[string] =
          string.tr('::', '/')
                .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
                .gsub(/([a-z\d])([A-Z])/, '\1_\2')
                .tr('-', '_')
                .downcase
        @__memoize_underscore[string]
      end
    end
  end
end

class Hash

  include Hextech::Mixins::TransformKeys

end

class Array

  include Hextech::Mixins::TransformKeys

end
