# frozen_string_literal: true

require 'open-uri'

module RiotApi
  module League
    class Patches < RiotApi::Adapter

      def latest
        send_request.first
      end

      private

      def path
        'https://ddragon.leagueoflegends.com/api/versions.json'
      end

    end
  end
end
