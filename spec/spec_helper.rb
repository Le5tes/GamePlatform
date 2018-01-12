ENV['RACK_ENV'] = "test"
require 'capybara'
require 'capybara/rspec'
require './app/app'
require 'selenium/webdriver'
require 'database_cleaner'
require 'pry'
require_relative 'web_helpers'
require_relative 'ajaxhelper.rb'

Capybara.app = GamePlatform
Capybara.default_max_wait_time = 5

include WaitForAjax

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
