module Factorial

  def self.kth_factorial(k, n)
 	raise Exception, 'Invalid args' unless k > 0 && n >= 0
 
    result = 1               
    (1..n).each do |m|
      result *= m           
    end

    return result**k
  end
end
