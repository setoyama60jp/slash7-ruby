# coding: utf-8
require 'json'
require 'base64'
require 'net/http'

module Slash7
  class Client

    SERVER = 'tracker.slash-7.com'

    # Initialize SLASH-7 client
    # @param [String] tracing_code SLASH-7 tracking code for your project
    # @param [Hash] options Options
    def initialize(tracing_code, options = {})
      @tracing_code = tracing_code
      @options = options
    end

    # Send data to SLASH-7.
    # See https://p-lucky.atlassian.net/wiki/display/PUB/Event+log+format for the format.
    # @param [Hash] data
    def send_data(data)
      Net::HTTP.post_form(URI.parse(endpoint_url), {'data' => self.class.encode(data)})
    end

    def endpoint_url
      "http://#{server}/track/#@tracing_code"
    end

    def server
      @options[:server] || SERVER
    end

    class << self
      # @param [Hash] data
      def encode(data)
        Base64.encode64(data.to_json)
      end
    end

  end
end
