# Rails Model Load Hook

Adds `:model_class` loading hook for every `ActiveRecord` descendant.

## Usage

```ruby
ActiveSupport.on_load :model_class do
  # The code for your model class goes here…
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "rails_model_load_hook"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install rails_model_load_hook
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
