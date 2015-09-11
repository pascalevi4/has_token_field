# HasTokenField

Sometimes you need to generate token fields in your ActiveRecord models. Use has_token_field to implement tokens and avoid code duplication.

## Installation

Add this line to your application's Gemfile:

    gem 'has_token_field'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install has_token_field

## Usage

Add new field to your table:

```ruby
class AddTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :token, :string
  end
end
```
Then call has_token_field method in model declaration:
```ruby
class User < ActiveRecord::Base
  has_token_field :token
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
