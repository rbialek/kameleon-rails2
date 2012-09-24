ENV["RAILS_ENV"] ||= 'test'
require 'kameleon'
require 'kameleon/ext/rspec/all'
require 'capybara/webkit'
require File.expand_path("../../config/environment", __FILE__)

#require 'rspec/rails'

# Add this to load Capybara integration:
require 'capybara/rspec'
require 'capybara/rails'

Dir["#{File.expand_path("../", __FILE__)}/support/**/*.rb"].each { |f| require f }

Capybara.configure do |c|
  # selenium can be enabled by adding :js => true
  c.default_driver= (ENV['CAPYBARA_DEFAULT_DRIVER']||:rack_test).to_sym
end

Kameleon.configure do |c|
  c.assets_dir = File.join(File.expand_path("../", __FILE__), 'fixtures', 'assets')
end
