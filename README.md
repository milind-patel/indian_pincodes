# IndianPincodes
A simple gem to search city, state, post office,head office and sub office details from pin_code. All details has been stored in yaml file

Note: You need around 25MB free space in your system or server to use this gem.

## Installation

Add this line to your application's Gemfile:

    gem 'indian-pincodes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install indian-pincodes

## Usage

```ruby
Pincodes.search('504201')
# => {:City: Hyderabad, :State: TELANGANA, :Post Office: Annaram, :Taluka Name: Chennur,:District Name: Adilabad,:Head Office: Mancherial,:Sub Office: Chinnoor,:Country: India }
# First run will take a while, as the yaml has to be loaded
```

If you are using Rails, you can load the yaml file on app startup for production and staging.
```ruby
# config/initializers/load_pin_codes.rb
Pincodes.load unless Rails.env.development?
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
