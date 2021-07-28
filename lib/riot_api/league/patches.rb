# frozen_string_literal: true

module RiotApi
  module League
    class Patches < RiotApi::Adapter

      def latest
        send_request.first
      end

      def previous
        send_request.second
      end

      private

      def path
        'https://ddragon.leagueoflegends.com/api/versions.json'
      end

    end
  end
end
