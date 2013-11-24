$:.unshift File.dirname(__FILE__)

require 'test/unit'
require 'lib/googl'

class TestShorten < Test::Unit::TestCase
	def test_shorten
		link = Googl.new
		link.url = "http://www.jessegrant.net"
		expected = link.shorten
		assert_equal(expected, "http://goo.gl/1CtCJa")
	end
end