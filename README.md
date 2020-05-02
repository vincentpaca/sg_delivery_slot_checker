# Singapore Grocery Delivery Slot Checker

Tells you if there are any available delivery slots from supported grocery stores.

Supported Grocery Stores:
- Fairprice
- Giant

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sg_delivery_slot_checker'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install sg_delivery_slot_checker

## Usage

```ruby
SgDeliverySlotChecker::Checker.new(postal_code: 149555).check_availability
```
Returns the following `Hash`
```
{ fairprice: true, giant: false }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vincentpaca/sg_delivery_slot_checker.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
