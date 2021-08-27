module Sage300Kit
  class Client
    module OE
      module Notes

        # Get all records:
        #   client.get_notes('COMPANY')
        # Get records using a range:
        #   client.get_notes('COMPANY', '$skip':5, '$top':2)
        # Get records using filter:
        #   client.get_notes('COMPANY', '$filter':"CustomerNumber eq '33166'")
        # Get records using complex filter:
        #   client.get_notes('COMPANY', '$filter':"CustomerNumber eq '112321' and CreditDebitNoteType eq 'CreditNote'")
        # Get records with subset of properties:
        #   client.get_notes('COMPANY', '$select':'CreditDebitNoteNumber, CustomerNumber')
        #
        # Query Parameters:
        # $filter -> String
        # $select -> Array
        # $top -> Integer
        # $skip - >Integer
        # $count -> boolean

        def get_notes(company, options = {})
          res = self.class.get("/#{company}/OE/OECreditDebitNotes", {query: options})
          Sage300Kit::Object.new(res)
        end

        # Get record by key:
        #   client.get_note('COMPANY', 10021638)
        # Get records with subset of properties:
        #   client.get_note('COMPANY', '$select':'OrderNumber, CustomerNumber')
        #
        # Query Parameters:
        # $select -> Array
        def get_note(company, order_id, options = {})
          res = self.class.get("/#{company}/OE/OECreditDebitNotes(#{order_id})", {query: options})
          Sage300Kit::Object.new(res)
        end

        # Create new record:
        # body: json
        # client.create_note("ACCLTD", {"CustomerNumber":"000015"})
        def create_note(company, options = {})
          res = self.class.post("/#{company}/OE/OECreditDebitNotes", {body: options})
          Sage300Kit::Object.new(res)
        end
      end
    end
  end
end
