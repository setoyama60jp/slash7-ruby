$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib/')
require 'slash7'
require 'base64'
require 'json'


RSpec.configure do |config|
  config.mock_with :rr
  # or if that doesn't work due to a version incompatibility
  # config.mock_with RR::Adapters::Rspec
end
