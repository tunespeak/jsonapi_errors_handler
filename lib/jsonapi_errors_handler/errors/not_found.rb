# frozen_string_literal: true

module JsonapiErrorsHandler
  module Errors
    # Handles serialization of NotFound HTTP error (404 status code)
    #
    class NotFound < ::JsonapiErrorsHandler::Errors::StandardError
      def initialize(message: nil)
        super(
          title: 'Record not Found',
          status: 404,
          detail: message || 'The server was unable to find what was requested'
        )
      end
    end
  end
end
