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
    assert_equal true , @m.elevenish(122)
    assert_equal false , @m.elevenish(13)
  end

  def test_icecream_party
    assert_equal 2, @m.icecream_party(5, 5)
    assert_equal 1, @m.icecream_party(4, 5)
    assert_equal 1, @m.icecream_party(5, 4)
    assert_equal 0, @m.icecream_party(4, 4)
  end
	
	def test_successful_squirrel_party
		assert_equal false, @m.successful_squirrel_party?(34, true)
		assert_equal false, @m.successful_squirrel_party?(80, false)
		assert_equal true, @m.successful_squirrel_party?(100, true)
		assert_equal true, @m.successful_squirrel_party?(54, false)
 	end
end
