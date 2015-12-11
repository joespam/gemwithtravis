require "./lib/openweather/version"

Gem::Specification.new do |s|
	s.name              = "openweather"
	s.version 			  = OpenWeather::VERSION 
	# s.version           = "0.0.1"
	s.platform          = Gem::Platform::RUBY
	s.author            = "Joe Spampinato"   
	s.email             = ["joe.spampinato@gmail.com"]   
	s.homepage          = "https://github.com/joespam/openweatherAPI"   
	s.summary           = "Easily access iTunes Store searches through the OpenWeatherMap API."   
	s.description       = "Easily access iTunes Store searches through the OpenWeatherMap API. This gem is barebones and currently only searches for current weather by city name"   
	s.license           = "MIT"
	s.required_ruby_version = ">= 2.0.0"
	s.files = "lib/openweather.rb"

	s.add_development_dependency 'rspec'
	# s.add_development_dependency 'webmock'
	# s.add_development_dependency 'vcr'
end
