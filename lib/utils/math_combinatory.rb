class Integer
  def factorial
	(1..self).reduce(:*) || 1
  end
  alias :! :factorial

  def combination (n)
	 n.! / (self.! * (n-self).!)
  end
  alias :among :combination
end
# Examples
puts 4.! #return 24...
puts 4.among(10)
