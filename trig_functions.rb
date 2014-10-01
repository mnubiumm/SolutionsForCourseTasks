require_relative "factorial.rb"

module TrigFunctions
	def self.sine(x, precision)
		raise Exception, 'Invalid args' unless precision > 0

		tailor_sum = 0
		(0..precision).each do |n|
			power = 2 * n + 1
			tailor_sum += current_member(x, n, power)
		end

		return tailor_sum
	end

	def self.cosine(x, precision)
		raise Exception, 'Invalid args' unless precision > 0

		tailor_sum = 0
		(0..precision).each do |n|
			power = 2 * n
			tailor_sum += current_member(x, n, power)
		end

		return tailor_sum
	end

	private

	def self.current_member(x, n, power)
		return ((-1)**n * x**power) / Factorial.kth_factorial(1, power)
	end
end