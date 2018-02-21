require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'http://demo.cs-cart.com'
end

Capybara.default_max_wait_time = 10
