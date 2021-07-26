# frozen_string_literal: true

module RiotApi
  class Response

    def initialize(response, path = nil)
      self.body = response.body
      self.status = response.status
      self.path = path
    end

    attr_reader :body, :status, :path

    def parsed_response
      @parsed_response ||= body.empty? ? {} : JSON.parse(body)
    end

    private

    attr_writer :body, :status, :path

  end
end
