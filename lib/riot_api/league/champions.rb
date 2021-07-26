# frozen_string_literal: true

require 'open-uri'

module RiotApi
  module League
    class Champions

      def import
        champion_data['data'].each do |_champion, data|
          stored_champion = Champion.find_or_create_by(riot_id: data['key'])

          stored_champion.update(
            name: data['name'],
            key: data['id'],
            title: data['title'],
            slug: data['name'].downcase,
            role: data['tags'][0]
          )
        end
      end

      private

      def champion_data
        @champion_data ||=
          HTTParty.get("http://ddragon.leagueoflegends.com/cdn/#{RiotApi::Patches.latest}/data/en_US/champion.json")
      end

    end
  end
end
