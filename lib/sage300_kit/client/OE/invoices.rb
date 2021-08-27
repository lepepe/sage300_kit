module Sage300Kit
  class Client
    module OE
      module Invoices

        # Get all records:
        #   client.get_invoices('COMPANY')
        # Get records using a range:
        #   client.get_invoices('COMPANY', '$skip':5, '$top':2)
        # Get records using filter:
        #   client.get_invoices('COMPANY', '$filter':"City eq 'Miami'")
        # Get records using complex filter:
        #   client.get_invoices('COMPANY', '$filter':"CustomerNumber eq '112321' and InvoiceAmountDue gt 0")
        # Get records with subset of properties:
        #   client.get_invoices('COMPANY', '$select':'OrderNumber, BillTo')
        #
        # Query Parameters:
        # $filter -> String
        # $select -> Array
        # $top -> Integer
        # $skip - >Integer
        # $count -> boolean

        def get_invoices(company, options = {})
          res = self.class.get("/#{company}/OE/OEInvoices", {query: options})
          Sage300Kit::Object.new(res)
        end

        # Get record by key:
        #   client.get_invoice('COMPANY', 10021638)
        # Get records with subset of properties:
        #   client.get_invoice('COMPANY', '$select':'InvoiceNumber, BillTo')
        #
        # Query Parameters:
        # $select -> Array
        def get_invoice(company, invoice_id, options = {})
          res = self.class.get("/#{company}/OE/OEInvoices(#{invoice_id})", {query: options})
          Sage300Kit::Object.new(res)
        end
      end
    end
  end
end
