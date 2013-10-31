# SanitizingBigdecimal

Take user interface into BigDecimal without bugs

## Installation

Add this line to your application's Gemfile:

    gem 'sanitizing_bigdecimal'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sanitizing_bigdecimal

## Usage

```ruby
user_input = "$3,000.23"
SanitizingBigDecimal.new(user_input)
#=> #<BigDecimal:bd78f60,'0.300023E4',9(18)>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
