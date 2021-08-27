module Sage300Kit
  class Client
    module PO
      module PurchaseOrders

        # Get all records:
        #   client.get_po('COMPANY')
        # Get records using a range:
        #   client.get_po('COMPANY', '$skip':5, '$top':2)
        # Get records using filter:
        #   client.get_po('COMPANY', '$filter':"City eq 'Miami'")
        # Get records using complex filter:
        #   client.get_po('COMPANY', '$filter':"Vendor eq '112321' and PurchaseOrderType eq 'Active'")
        # Get records with subset of properties:
        #   client.get_order('COMPANY', '$select':'Vendor, PurchaseOrderNumber')
        #
        # Query Parameters:
        # $filter -> String
        # $select -> Array
        # $top -> Integer
        # $skip - >Integer
        # $count -> boolean

        def get_pos(company, options = {})
          res = self.class.get("/#{company}/OE/POPurchaseOrders", {query: options})
          Sage300Kit::Object.new(res)
        end

        # Get record by key:
        #   client.get_order('COMPANY', 10021638)
        # Get records with subset of properties:
        #   client.get_order('COMPANY', '$select':'OrderNumber, CustomerNumber')
        #
        # Query Parameters:
        # $select -> Array
        def get_po(company, po_id, options = {})
          res = self.class.get("/#{company}/OE/POPurchaseOrders(#{po_id})", {query: options})
          Sage300Kit::Object.new(res)
        end

        # Create new record:
        # body: json
        # client.create_order("ACCLTD", {"CustomerNumber":"000015"})
        def create_po(company, options = {})
          res = self.class.post("/#{company}/OE/OEOrders", {body: options})
          Sage300Kit::Object.new(res)
        end
      end
    end
  end
end
