# Sage300Kit

Sage300Kit is a ruby gem client library to talk with Sage300 API.   

The Sage 300 Web API makes it easier to create services that integrate with Sage 300 data and business logic. The Web API improves on existing tools for third-party integrations without requiring in-depth understanding of the Sage 300 View protocol and components.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sage300_kit'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install sage300_kit

## Usage

Make sure you have Sage300 web services up and runing. Web service is an easy way to communicate with 3rd party application without hampering the existing system & this is the reason we will always suggest to go for web service integration, whenever any customer requires integration.   
Initialize client to make requets:

``` ruby
require 'sage300_kit'
client = Sage300Kit::Client.new(auth: "YOUR_BASIC_AUTH")
client.get_orders('COMPANY', '$top':10)
```

## Resources

### Order Entry Module

#### OEOrders

``` ruby
client.get_orders('COMPANY')
client.get_order('COMPANY', <ORDER_ID>)
client.create_order('COMPNAY', {})
```

#### OEInvoices

``` ruby
client.get_invoices('COMPANY')
client.get_invoice('COMPANY', <ORDER_ID>)
```
#### OECreditDebitNotes

``` ruby
client.get_notes('COMPANY')
client.get_note('COMPANY', <ORDER_ID>)
client.create_notes('COMPNAY', {})
```

#### OESalesHistory

``` ruby
client.sales_history('COMPANY')
client.sales_history_details('COMPANY')
client.sales_statistics('COMPNAY', {})
```

### Purchase Order Entry Module

#### POPurchaseOrders

``` ruby
client.get_pos('COMPANY')
client.get_po('COMPANY', <ORDER_ID>)
client.create_po('COMPNAY', {})
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Sage300Kit project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/lepepe/sage300_kit/blob/master/CODE_OF_CONDUCT.md).
