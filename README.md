# IndianPincodes [![Gem Version](https://badge.fury.io/rb/indian-pincodes.png)](https://badge.fury.io/rb/indian-pincodes.svg)

A simple gem to search city, state, post office,taluka name, district name,head office and sub office details from pincode. All details has been stored in yaml file

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

require "indian_pincodes"

IndianPincodes.search('382481')
# => {:city=>"Ahmedabad", :state=>"GUJARAT", :post_office=>"Nirnaynagar", :taluka_name=>"Ahmadabad, :district_name=>"Ahmedabad", :head_office=>"Gandhinagar (Gujarat)", :sub_office=>"NA", :country=>"India"}
# First run will take a while, as the yaml has to be loaded.
```

If you are using Rails, you can load the yaml file on app startup for production and staging.
```ruby
# config/initializers/load_pin_codes.rb
IndianPincodes.load unless Rails.env.development?
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
