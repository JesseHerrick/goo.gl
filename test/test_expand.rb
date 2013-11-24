$:.unshift File.dirname(__FILE__)

require 'test/unit'
require 'lib/googl'

class TestExpand < Test::Unit::TestCase
	def test_expand
		link = Googl.new
		link.url = "http://goo.gl/1CtCJa"
		expected = link.expand
		assert_equal(expected, "http://www.jessegrant.net/")
	end
end
