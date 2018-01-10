ENV['RACK_ENV'] = "test"
require 'capybara'
require 'capybara/rspec'
require './app/app'
require 'selenium/webdriver'
require 'database_cleaner'
require 'pry'
require_relative 'web_helpers'

Capybara.app = MakersBnB

RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

   config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

end
