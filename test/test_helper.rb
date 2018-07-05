ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'simplecov'
require 'codecov'

class ActiveSupport::TestCase
  require 'simplecov'
  SimpleCov.start

  SimpleCov.formatter = SimpleCov::Formatter::Codecov
  # Add more helper methods to be used by all tests here...
end
