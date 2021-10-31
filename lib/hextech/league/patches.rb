# frozen_string_literal: true

module Hextech
  module League
    class Patches < Hextech::Adapter

      def latest
        call.first
      end

      private

      def host
        'https://ddragon.leagueoflegends.com'
      end

      def path
        '/api/versions.json'
      end

    end
  end
end
