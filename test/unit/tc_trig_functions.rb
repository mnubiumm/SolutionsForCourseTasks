require "test/unit"
require_relative "../../trig_functions.rb"

class TestTrigFunctions < Test::Unit::TestCase
	def test_sine_with_valid_angle
		angle = Math::PI / 6.0
		assert_equal Math.sin(angle), TrigFunctions.sine(angle, 100), 'sine value is wrong'
	end

	def test_sine_with_invalid_input
		assert_raises(Exception) { TrigFunctions.sine(Math::PI / 6.0, -1) }
	end

	def test_cosine_with_valid_angle
		angle = 5 * Math::PI / 6.0
		assert_equal Math.cos(angle), TrigFunctions.cosine(angle, 100), 'cosine value is wrong'
	end

	def test_cosine_with_invalid_input
		assert_raises(Exception) { TrigFunctions.cosine(Math::PI / 3.0, 0) }
	end
end