require 'json'
require 'rest-client'

class Googl
	attr_accessor :url

	def status
		@response = RestClient.get("https://www.googleapis.com/urlshortener/v1/url?shortUrl=#{url}")
		if @response.code == 200
			json_response = JSON.parse(@response.body)
			return json_response["status"]
		else
			abort "ERROR: #{@response.code}"
		end
	end
end