# frozen_string_literal: true

module Hextech
  class Errors < Faraday::Response::Middleware

    def on_complete(env)
      case env[:status]
      when 403
        raise Hextech::Forbidden, 'You may not have the rights to perform this action or your API key may have expired.'
      when 404
        raise Hextech::NotFound, 'Resource not found.'
      when 429
        raise Hextech::RateLimitExceeded, 'Too many requests have exceeded your designated rate limit.'
      end
    end

  end

  class RateLimitExceeded < StandardError; end

  class NotFound < StandardError; end

  class Forbidden < StandardError; end

  class InvalidArgument < StandardError; end
end
