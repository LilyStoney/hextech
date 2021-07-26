# frozen_string_literal: true

require 'open-uri'

module RiotApi
  module League
    class Patches

      def self.latest
        JSON.parse(open('https://ddragon.leagueoflegends.com/api/versions.json')).first
      end

    end
  end
end
