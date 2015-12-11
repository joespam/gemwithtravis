$LOAD_PATH.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
	s.name              = "openweather"
	s.version           = "1.0.0"
	s.platform          = Gem::Platform::RUBY
	s.author            = "Joe Spampinato"   
	s.email             = ["joe.spampinato@gmail.com"]   
	s.homepage          = "https://github.com/joespam/openweatherAPI"   
	s.summary           = "Easily access iTunes Store searches through the OpenWeatherMap API."   
	s.description       = "Easily access iTunes Store searches through the OpenWeatherMap API. This gem is barebones and currently only searches for current weather by city name"   
	s.license           = "MIT"
	s.required_ruby_version = ">= 1.9.2"
	s.files = "lib/openweather.rb"
end