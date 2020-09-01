# OrderOfNames
The order of family names and given names varies from country to country.
This gem allows you to correctly reorder the order of the names in the different countries.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'order_of_names'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install order_of_names

## Usage


```ruby
# Sort the names by ISO country numeric code
OrderOfNames.full_name(code: 392, given_name: 'naruto', family_name: 'Uzumaki') # => `Uzumaki naruto`

# Sort the names by ISO country alpha3 code
OrderOfNames.full_name(code: 'USA', given_name: 'naruto', family_name: 'Uzumaki') # => `naruto Uzumaki`
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/egamiTa/order_of_names. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/order_of_names/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the OrderOfNames project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/order_of_names/blob/master/CODE_OF_CONDUCT.md).
