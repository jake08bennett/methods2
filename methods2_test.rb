require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end
	def test_elevenish
    assert_equal true , @m.elevenish(12)
    assert_equal false , @m.elevenish(10)
    assert_equal true , @m.elevenish(22)
    assert_equal false , @m.elevenish(13)
    end
end
