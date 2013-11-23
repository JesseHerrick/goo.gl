$:.unshift File.dirname(__FILE__)

require 'googl/shorten'

class Googl
	def initialize(url)
		@@url = url
		unless @@url.include?("http://") || @@url.includes?("https://")
			@@url = "http://#{@@url}"
		end
		abort "ERROR: URL empty." if @@url.empty?
	end
end