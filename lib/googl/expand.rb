require 'json'

class Googl
	attr_accessor :url

	def expand
		@url = "https://www.googleapis.com/urlshortener/v1/url?shortUrl=#{url}"
		@response = RestClient.get(@url)
		if @response.code == 200
			json_response = JSON.parse(@response)
			return json_response["longUrl"]
		else
			abort "ERROR: #{@response.code}"
		end
	end
end
