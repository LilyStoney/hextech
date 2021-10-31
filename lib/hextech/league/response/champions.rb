# frozen_string_literal: true

module Hextech
  module League
    module Response
      class Champions < Hextech::BaseStruct

        attribute :version, Types::String
        attribute :id, Types::String
        attribute :key, Types::String
        attribute :name, Types::String
        attribute :title, Types::String
        attribute :blurb, Types::String

        attribute :info do
          attribute :attack, Types::Integer
          attribute :defense, Types::Integer
          attribute :magic, Types::Integer
          attribute :difficulty, Types::Integer
        end

        attribute :image do
          attribute :full, Types::String
          attribute :sprite, Types::String
          attribute :group, Types::String
          attribute :x, Types::Integer
          attribute :y, Types::Integer
          attribute :w, Types::Integer
          attribute :h, Types::Integer
        end

        attribute :tags, Types::Array
        attribute :partype, Types::String

        attribute :stats do
          attribute :hp, Types::Coercible::Float
          attribute :hpperlevel, Types::Coercible::Float
          attribute :mp, Types::Coercible::Float
          attribute :mpperlevel, Types::Coercible::Float
          attribute :movespeed, Types::Coercible::Float
          attribute :armor, Types::Coercible::Float
          attribute :armorperlevel, Types::Coercible::Float
          attribute :spellblock, Types::Coercible::Float
          attribute :spellblockperlevel, Types::Coercible::Float
          attribute :attackrange, Types::Coercible::Float
          attribute :hpregen, Types::Coercible::Float
          attribute :hpregenperlevel, Types::Coercible::Float
          attribute :mpregen, Types::Coercible::Float
          attribute :mpregenperlevel, Types::Coercible::Float
          attribute :crit, Types::Coercible::Float
          attribute :critperlevel, Types::Coercible::Float
          attribute :attackdamage, Types::Coercible::Float
          attribute :attackdamageperlevel, Types::Coercible::Float
          attribute :attackspeedperlevel, Types::Coercible::Float
          attribute :attackspeed, Types::Coercible::Float
        end
      end
    end
  end
end
