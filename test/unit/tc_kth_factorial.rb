require "test/unit"
require_relative "../../factorial.rb"

class TestKthFactorial < Test::Unit::TestCase

	def test_factorial_to_power_of_one
    	assert_equal 120, Factorial.kth_factorial(1, 5), "1 time should just be 5!"
    end

	def test_factorial_with_valid_input
		assert_equal 576, Factorial.kth_factorial(2, 4), "2 times 4! should be 576"
    end

    def test_factorial_of_one
    	assert_equal 1, Factorial.kth_factorial(100, 1), "100 times 1! should be 1"
    end
   
	def test_factorial_with_invalid_input
    	assert_raises(Exception) { Factorial.kth_factorial(-5, 2) }
    end
end
