require 'uri'
require 'json'
require 'rest-client'

class Googl
	def shorten
		url = @@url
		request = {:longUrl => url}

		response = RestClient.post("https://www.googleapis.com/urlshortener/v1/url", request.to_json, :content_type => :json, :accept => :json)
		
		json_response = JSON.parse(response.body)
		json_response["id"]
	end
end