class Integer
  def factorial
	(1..self).reduce(:*) || 1
  end
  alias :! :factorial

  def factorial2
	  result = 1
	  self.times do |i|
	  	result *= i+1
	  end
	  result
  end

  def combination (n)
	 n.! / (self.! * (n-self).!)
  end
  alias :among :combination
end
# Examples
# puts 4.! #return 24...
# puts 4.among(10)

#  tic = Time.now
# b = 0
# 100000.times do
# 	b = (50.factorial2)
#
# 	end
# puts b
# toc = Time.now
# ret = toc - tic
# puts ret
#
#  tic = Time.now
#  c = 0
# 100000.times do
# 	c = 50.!
# end
# puts c
# toc = Time.now
# ret = toc - tic
# puts ret
#
# puts c==b
