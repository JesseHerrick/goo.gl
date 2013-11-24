$:.unshift File.dirname(__FILE__)

require 'googl/shorten'
require 'googl/expand'
require 'googl/status'

class Googl
	attr_accessor :url

	url = String.new

	unless url.nil?
		if url.include?("http://") || url.include?("https://")
			url = "http://#{url}"
		end
		abort "ERROR: URL cannot contain spaces." if url.include? "\ "
	end
end
