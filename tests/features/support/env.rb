# frozen_string_literal: true

require 'rubygems'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'byebug'
require 'rubocop'

Capybara.configure do |config|
  Capybara.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end
