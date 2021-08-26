module Sage300Kit
  class Client
    module OE
      module Orders

        # Get all records:
        #   client.get_order('COMPANY')
        # Get records using a range:
        #   client.get_order('COMPANY', '$skip':5, '$top':2)
        # Get records using filter:
        #   client.get_order('COMPANY', '$filter':"City eq 'Miami'")
        # Get records using complex filter:
        #   client.get_order('COMPANY', '$filter':"CustomerNumber eq '112321' and OrderType eq 'Active'")
        # Get records with subset of properties:
        #   client.get_order('COMPANY', '$select':'OrderNumber, CustomerNumber')
        #
        # Query Parameters:
        # $filter -> String
        # $select -> Array
        # $top -> Integer
        # $skip - >Integer
        # $count -> boolean

        def get_orders(company, options = {})
          res = self.class.get("/#{company}/OE/OEOrders", {query: options})
          Sage300Kit::Object.new(res)
        end

        # Get record by key:
        #   client.get_order('COMPANY', 10021638)
        # Get records with subset of properties:
        #   client.get_order('COMPANY', '$select':'OrderNumber, CustomerNumber')
        #
        # Query Parameters:
        # $select -> Array
        def get_order(company, order_id, options = {})
          res = self.class.get("/#{company}/OE/OEOrders(#{order_id})", {query: options})
          Sage300Kit::Object.new(res)
        end

        # Create new record:
        # body: json
        # client.create_order("ACCLTD", {"CustomerNumber":"000015"})
        def create_order(company, options = {})
          res = self.class.post("/#{company}/OE/OEOrders", {body: options})
          Sage300Kit::Object.new(res)
        end
      end
    end
  end
end
