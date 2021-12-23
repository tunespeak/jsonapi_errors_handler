# frozen_string_literal: true

module JsonapiErrorsHandler
  module Errors
    # Handles serialization of forbidden HTTP error (403 status code)
    #
    class Forbidden < ::JsonapiErrorsHandler::Errors::StandardError
      def initialize(message: nil)
        super(
          title: 'Forbidden request',
          status: 403,
          detail: message || 'The requested resource is forbidden',
          source: { pointer: '/request/headers/authorization' }
        )
      end
    end
  end
end
