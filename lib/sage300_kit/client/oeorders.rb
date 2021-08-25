module Sage300Kit
  class Client
    module Oeorders

      def get_orders(options = {})
        self.class.get("/OE/OEOrders", {query: options})
      end

      def get_order(order_id, options = {})
        self.class.get("/OE/OEOrders(#{order_id})", {query: options})
      end

    end
  end
end
