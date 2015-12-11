require 'rspec'
require_relative '../lib/itunes'
require_relative 'vcr_setup'

CLIENT = openweather.new ENV['OPENWEATHERMAP']