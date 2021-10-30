# frozen_string_literal: true

module RiotApi
  module League
    class Patches < RiotApi::Adapter

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
