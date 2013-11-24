require 'test/unit'
require 'lib/googl'

class TestStatus < Test::Unit::TestCase
	def test_status
		link = Googl.new
		link.url = "http://goo.gl/1CtCJa"
		expected = link.status
		assert_equal(expected, "OK")
	end
end