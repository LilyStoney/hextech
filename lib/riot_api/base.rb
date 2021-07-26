# frozen_string_literal: true

module RiotApi
  module League
    class Base

      private

      def send_request
        RiotApi::Adapter.call(
          region: region,
          path: path
        )
      end

      def path
        raise NotImplementedError, 'Missing path attribute'
      end

    end
  end
end
