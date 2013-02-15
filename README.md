# Slash7

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'slash7'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slash7

## Usage

````
require 'slash7'
client = Slash7::Client.new('[YOUR TRACKING CODE]')
# Build your own event
# See https://p-lucky.atlassian.net/wiki/display/PUB/Event+log+format for the format.
event = {
  '_event_name' => 'attack',
  '_app_user_id' => 'user100123',
  '_event_params' => {'weapon' => 'long sword'},
  'lv' => 21
}
client.send_data(event)
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
