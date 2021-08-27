require "httparty"
require "sage300_kit/client/connection"

# Order Entry Moduel OE
require "sage300_kit/client/OE/orders"
require "sage300_kit/client/OE/invoices"
require "sage300_kit/client/OE/notes"
require "sage300_kit/client/OE/sales_history"

# Purchase Order Entry Moduel PO
require "sage300_kit/client/PO/purchase_orders"

module Sage300Kit
  class Client
    include HTTParty
    include Sage300Kit::Client::Connection

    # Order Entry Moduel OE
    include Sage300Kit::Client::OE::Orders
    include Sage300Kit::Client::OE::Notes
    include Sage300Kit::Client::OE::SalesHistory
    # Purchase Order Entry Moduel PO
    include Sage300Kit::Client::PO::PurchaseOrders

    DEFAULT_TIMEOUT = 120

    base_uri "http://10.255.6.60/Sage300WebApi/v1.0/vertilux"
    format :json

    def initialize(options = {})
      @auth = options[:auth] || ENV["SAGE_300_KEY"]
      @timeout = options[:timeout] || DEFAULT_TIMEOUT

      self.class.default_options.merge!(
        headers: {
          'Authorization' => @auth,
          'Content-Type' => 'application/json'
        },
        timeout: @timeout
      )
    end
  end
end
