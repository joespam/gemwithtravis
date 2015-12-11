require_relative './spec_helper'

describe '#client' do
	it '#initialize' do
		expect(CLIENT).to be_an OpenWeather::Client
	end

	it '#current_forecast_by_cityname' do
		VCR.use_cassette 'cfbc' do
			expect(CLIENT.current_forecast_by_cityname("Philadelphia")).to be_a String
		end
	end

end