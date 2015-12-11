require 'net/http' 
require 'json'
require 'pp'

require_relative './openweather/version'

module OpenWeather

	class Client

		def initialize(apikey="")
			@apikey = apikey
		end

		def cityname_to_id cityname, country="US"
			city_file = File.read './city.list.json'
			city_hash = JSON.parse(city_file)
			# search city_hash for a hash with record name=city - remove caps first
		end

		# for a given valid city id, return the 2-5 day forecast
		#
		def current_forecast_by_id city_id

			# pp "I am searching for #{term}"
			uri = URI("http://api.openweathermap.org/data/2.5/forecast/city?id=#{city_id}&APPID=#{@apikey}")
			# tell Net::HTTP to GET the URI
			Net::HTTP.get(uri) # => String
		end

		# for a given valid city name, return the 2-5 day forecast
		#
		def current_forecast_by_cityname cityname

			# puts @apikey
			# puts "http://api.openweathermap.org/data/2.5/forecast/city?name=#{cityname}&APPID=#{@apikey}"
			# puts "http://api.openweathermap.org/data/2.5/weather?q=#{cityname}&APPID=#{@apikey}"
			if cityname != ""
				# pp "I am searching for #{term}"
				uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{cityname}&APPID=#{@apikey}")
				# uri = URI("http://api.openweathermap.org/data/2.5/forecast/city?name=#{cityname}&APPID=#{@apikey}")
				# tell Net::HTTP to GET the URI
				Net::HTTP.get(uri) # => String
			end
		end
		# return a JSON parsed object of whatever you pass in
		#
		def parseWrapper results
			JSON.parse(results)
		end
	end
end

#
# Some testing code
#
# ow = OpenWeather.new ENV['OPENWEATHERMAP']
# result = ow.current_forecast_by_cityname "Philadelphia"
# puts result
# result = ow.current_forecast_by_cityname "Los Angeles"
# puts result
# result = ow.current_forecast_by_cityname "Cairo"
# puts result
# result = ow.current_forecast_by_cityname "Amsterdam"
# puts result