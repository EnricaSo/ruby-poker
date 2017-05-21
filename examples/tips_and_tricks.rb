options = {
	"Regexp is GOOD, intelligence is BETTER" 			=> 1,
	"Several modules for the same method name" 			=> 2,
	"Act depending on the future in a loop function" 	=> 3,
	"Zipping two arrays to a hash in a blink"			=> 4,
	"Build an array with an enumerable..." 				=> 5,
	"Easiest tracking method method...of the universe"	=> 6,
	"Prepending string instead of creating new ones" 	=> 7,
	"Easy search for regexp"							=> 8
}
p "Choose a trick:"
options.each { |key, value| p "#{value}) #{key}"}
nb_in = gets.chomp.to_i
case nb_in
when 1 #Regexp is GOOD, intelligence is BETTER
	# test whether or not there is a word in a string:
	x="Hello Chica"
	p x["Hell"]
	# => "Hell"
	p x["Heaven"]
	# => "nil"
when 2 #Several modules for the same method name
	module Foo
		def bar
			puts "Brilliant side of the experiment"
		end
	end
	module Foo2
		def bar
			puts "DARK SIDE OF THE EXPERIMENT"
		end
	end
	class AClass
		include Foo
		include Foo2
	end
	AClass.new.bar
	# => Conclusion: last module included is considered
when 3#Act depending on the future in a loop function
	1.upto(42) do |i|
		next if i.odd? # Next is integer is odd
		p i # So I decide to print something now!
	end
when 4#Zipping two arrays to a hash in a blink
	series = ["The 100", "Hannibal", "Peaky Blinders", "Blacksails"]
	ranks = [4,1,2,3]
	hash=series.zip(ranks)
			   .to_h
			   .each {|serie,rank| puts "\"#{serie}\"'s rank is #{rank}" }
	puts "We have a hash almost immediately : #{hash}"
when 5
	enumerable = 1..2
	puts "enumerable : #{enumerable}"
	array = [*enumerable]
	puts "array : #{array}"
	array2 = [*array]
	puts "array2 : #{array2}"
when 6
	class AClass
		def self.repeat_same_stuff(*meths)
			meths.each do |meth|
				define_method(meth) do
					__method__
				end
			end
		end
		repeat_same_stuff :first_meth, :second_meth
	end
	a = AClass.new
	p a.first_meth
	p a.second_meth
	require 'ap'
	p method(:ap).source_location
when 7
	a = "I Love you"
	tic = Time.now
	100.times do
		a = a + "!"
		 puts(a)
	 end
	 toc = Time.now
	 timer1 = toc - tic

	 a = "I Love you even more"
 	tic = Time.now
 	100.times do
 		 puts a.prepend("!")
 	 end
 	 toc = Time.now
 	 timer2 = toc - tic
	 p "10000 times creating a new string : #{timer1}"
	 p "10000 times prepending a new string : #{timer2}"
when 8
	str = "Enrica Soria: Chichito's Ruby"

	print " Regexp search, is similar to an array search : \n"
	print "First result of the search : ", str[/(\w+) (\w+)/, 1], "\n" #same trick as N°1, but for regexp!
	print "Second result of the search : ", str[/(\w+) (\w+)/, 2], "\n"
	print "From the string, I want the surname...please : ", str[/(?<Surname>\w+) (?<Name>\w+)/, :Surname], "\n" #things become even incredible with symbols wich store the result of the search...
	regexp = /(?<Surname>\w+) (?<Name>\w+)/
	print "And now, the name, if that's possible... ! #{str[regexp, :Name]}\n"
	print "Full result : ", str[regexp], "\n"
	/ica/.match(str)
	puts $~ # only useful when writing ruby in console (irb mode)
end
