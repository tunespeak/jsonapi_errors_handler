# frozen_string_literal: true

module JsonapiErrorsHandler
  module Errors
    # Handles serialization of Unauthorized HTTP error (401 status code)
    #
    class Unauthorized < ::JsonapiErrorsHandler::Errors::StandardError
      def initialize(message: nil)
        super(
          title: 'Unauthorized',
          status: 401,
          detail: message || 'The request lacks valid authentication credentials.',
          source: { pointer: '/request/headers/authorization' }
        )
      end
    end
  end
end
