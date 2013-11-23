require 'json'

class Googl
	def expand
		response = RestClient.get(@@url)
		if response.code == 200
			puts JSON.pretty_generate(response.body)
		else
			puts "ERROR: #{response.code}"
		end
	end
end