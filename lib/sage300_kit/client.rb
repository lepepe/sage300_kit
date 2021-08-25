require "httparty"
require "sage300_kit/client/connection"
require "sage300_kit/client/oeorders"

module Sage300Kit
  class Client
    include HTTParty
    include Sage300Kit::Client::Connection
    include Sage300Kit::Client::Oeorders

    DEFAULT_TIMEOUT = 120

    base_uri "http://10.255.6.60/Sage300WebApi/v1.0/vertilux/ACCLTD"
    format :json

    def initialize(options = {})
      @auth = options[:auth] || ENV["SAGE_300_KEY"]
      @timeout = options[:timeout] || DEFAULT_TIMEOUT

      self.class.default_options.merge!(
        headers: { 'Authorization' => @auth },
        timeout: @timeout
      )
    end
  end
end
