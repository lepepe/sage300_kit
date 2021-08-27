module Sage300Kit
  class Client
    module OE
      module SalesHistory

        # Get all records:
        #   client.sales_history_details('COMPANY')
        # Get records using a range:
        #   client.sales_history_details('COMPANY', '$skip':5, '$top':2)
        # Get records using filter:
        #   client.sales_history_details('COMPANY', '$filter':"Category eq 'Category'")
        # Get records using complex filter:
        #   client.sales_history_details('COMPANY', '$filter':"CustomerNumber eq '112321' and Category eq 'Category'")
        # Get records with subset of properties:
        #   client.sales_history_details('COMPANY', '$select':'OrderNumber, CustomerNumber, FunctionalSalesAmount')
        #
        # Query Parameters:
        # $filter -> String
        # $select -> Array
        # $top -> Integer
        # $skip - >Integer
        # $count -> boolean

        def sales_history(company, options = {})
          res = self.class.get("/#{company}/OE/OESalesHistory", {query: options})
          Sage300Kit::Object.new(res)
        end

        def sales_history_details(company, options = {})
          res = self.class.get("/#{company}/OE/OESalesHistoryDetails", {query: options})
          Sage300Kit::Object.new(res)
        end

        def sales_statistics(company, options = {})
          res = self.class.get("/#{company}/OE/OESalesStatistics", {query: options})
          Sage300Kit::Object.new(res)
        end
      end
    end
  end
end
