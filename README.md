# Sage300Kit

Sage300Kit is a ruby gem client library to talk with Sage300 API.

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

### OE Module

#### OROrders

``` ruby
client.get_orders('COMPANY')
client.get_order('COMPANY', <ORDER_ID>)
client.create_order('COMPNAY', {})
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Sage300Kit project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/lepepe/sage300_kit/blob/master/CODE_OF_CONDUCT.md).
