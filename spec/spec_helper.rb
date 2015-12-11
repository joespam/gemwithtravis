require 'rspec'
require_relative '../lib/openweather'
require_relative 'vcr_setup'

CLIENT = OpenWeather::Client.new ENV['OPENWEATHERMAP']