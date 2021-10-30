# frozen_string_literal: true

module RiotApi
  class Forbidden < StandardError; end

  class ServerError < StandardError; end

  class InvalidArgument < StandardError; end
end
