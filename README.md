# For

A Ruby port of Scala's for comprehension to be used in tandem with [`Option`](https://github.com/rares/option).

## Installation

Add this line to your application's Gemfile:

    gem "for-yield'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install for-yield

## Usage

To use the for comprehension helper:

```ruby
for_ Option(1), Option(2) do |a, b|
  a + b # => 3
end
```

This enables unwrapping multiple `Option` values into a block.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Implement your feature. Patches not considered without accompanying tests.
4. Commit your changes (`git commit -am 'Added some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
