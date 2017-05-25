options = {
  'Regexp is GOOD, intelligence is BETTER' 						=> 1,
  'Several modules for the same method name' 					=> 2,
  'Act depending on the future in a loop function' 				=> 3,
  'Zipping two arrays to a hash in a blink'						=> 4,
  'Build an array with an enumerable...' 						=> 5,
  'Easiest tracking method...of the universe'					=> 6,
  'Prepending string instead of creating new ones' 				=> 7,
  'Easy search for regexp'										=> 8,
  "Only one block per function, so let's convert it to procs"	=> 9,
  'Strange ways to call procs...'								=> 10,
  'Closures'													=> 11,
  'Be careful when copying'										=> 12,
  'Singleton methods and singleton classes'						=> 13
}
p 'Choose a trick:'
options.each { |key, value| p "#{value}) #{key}" }
nb_in = gets.chomp.to_i
case nb_in
when 1 # Regexp is GOOD, intelligence is BETTER
  # test whether or not there is a word in a string:
  x = 'Hello Chica'
  p x['Hell']
  # => "Hell"
  p x['Heaven']
# => "nil"
when 2 # Several modules for the same method name
  module Foo
    def bar
      puts 'Brilliant side of the experiment'
    end
  end
  module Foo2
    def bar
      puts 'DARK SIDE OF THE EXPERIMENT'
    end
  end
  class AClass
    include Foo
    include Foo2
  end
  AClass.new.bar
# => Conclusion: last module included is considered
when 3 # Act depending on the future in a loop function
  1.upto(42) do |i|
    next if i.odd? # Next is integer is odd
    p i # So I decide to print something now!
  end
when 4 # Zipping two arrays to a hash in a blink
  series = ['The 100', 'Hannibal', 'Peaky Blinders', 'Blacksails']
  ranks = [4, 1, 2, 3]
  hash = series.zip(ranks)
               .to_h
               .each { |serie, rank| puts "\"#{serie}\"'s rank is #{rank}" }
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
  a = 'I Love you'
  tic = Time.now
  100.times do
    a += '!'
    puts(a)
  end
  toc = Time.now
  timer1 = toc - tic

  a = 'I Love you even more'
  tic = Time.now
  100.times do
    puts a.prepend('!')
  end
  toc = Time.now
  timer2 = toc - tic
  p "10000 times creating a new string : #{timer1}"
  p "10000 times prepending a new string : #{timer2}"
when 8
  str = "Enrica Soria: Chichito's Ruby"

  print " Regexp search, is similar to an array search : \n"
  print 'First result of the search : ', str[/(\w+) (\w+)/, 1], "\n" # same trick as N°1, but for regexp!
  print 'Second result of the search : ', str[/(\w+) (\w+)/, 2], "\n"
  print 'From the string, I want the surname...please : ', str[/(?<Name>\w+) (?<Surname>\w+)/, :Surname], "\n" # things become even incredible with symbols wich store the result of the search...
  regexp = /(?<Name>\w+) (?<Surname>\w+)/
  print "And now, the name, if that's possible... ! #{str[regexp, :Name]}\n"
  print 'Full result : ', str[regexp], "\n"
  /ica/.match(str)
  puts $LAST_MATCH_INFO # only useful when writing ruby in console (irb mode)
  /(?<e>E)/ =~ str # We have to change the style in ordre to store variables, but, still, it's simple and elegant
  puts e
when 9
  arr = [1, 2, 3, 4]
  arr.each { |i| p i }

  def run_block
    yield if block_given? # otherwise, it needs THE block (no more than one block can be yielded...)
  end

  run_block { puts 'As .each, run_block can interprete blocks' }
  run_block

  class Array
    def random_each(proc) # Only one block, so we can convert them to Procs if there are many : proc = &block
      shuffle.each do |e|
        proc.call e
        yield e # here block is in fact a proc, converted 3 lines above...
      end
    end
  end

  p 'random_each, within Array class : '
  proc = proc { |e| puts e }
  [1, 2, 3, 4].random_each(proc) { |_e| puts 'block effect' }

when 10
  # include 'Time'
  puts Time.now
  puts_parity = proc do |int|
    int.even? ?
     puts("#{int} is even") : puts("#{int} is odd")
  end
  puts_parity.call(1)
  puts_parity.call(3)
  puts_parity[4]
  puts_parity === 42 # why this way of calling procs?!?

  special_date = proc { |date| date == Time.new(2017, 6, 5) }

  reminderproc = proc do |date|
    case date
    when special_date # in fact ruby understands
      # date === special_date <=> special_date === date <=> special_date.(date)
      p "#{date} is a special date!! \nREMINDED : Be kind with Chica, for once"
    else
      p "#{date}... Kick her ass!!!!!!!! Mouhahaha http://i3.kym-cdn.com/photos/images/original/000/544/643/ece.jpg"
    end
  end

  date = Time.new(2017, 6, 5)
  reminderproc.call(date)
  reminderproc.call(date + (60 * 60 * 24))

when 12
  puts 'Chichito, be careful when copying an array.'

  puts 'Insert a list of film we plan to see.'
  films_Chico = []
  (0..2).map do |i|
    print 'Add film: '
    films_Chico[i] = gets.chomp
  end

  puts "Chico's list is:"
  (1..(films_Chico.length)).each { |value| p "#{value}) #{films_Chico[value - 1]}" }

  puts 'However, I do not agree with the second one, I prefer Mulan.'
  films_Chica = films_Chico.clone
  films_Chica[1] = 'Mulan'
  puts "Chica's list is:"
  (1..(films_Chica.length)).each { |value| p "#{value}) #{films_Chica[value - 1]}" }

when 13
  p 'Did you know the existence of singleton methods and singleton classes?'
  p 'Choose a definition. Type: '
  singleton = {
    'method' => 1,
    'class' => 2,
    'exit' => 'q'
  }
  singleton.select { |key, _value| key != 'exit' }.each do |key, value|
    p "#{value} for singleton #{key}"
  end

  p "#{singleton['exit']} for exit"

  begin
    input = gets.chomp
    case input
    when '1'
      p 'A singleton method is a method belonging to a single object.'
    when '2'
      p 'A singleton class is a class which defines a single object.'
    when 'q'
      puts 'Now have a look to the example I wrote for you!'
      break
    else
      p 'Character not allowed'
    end
    print 'I know you want to know more... Type again:'
  end while input != 'q'

  class Box
    def initialize(name)
      @name = name
    end
  end

  p 'I am creating a singleton method ...'
  starprize = Box.new('Star Prize')
  def starprize.congratulate
    puts("You've won a fabulous holiday in Grimsby!")
  end

  p 'Now I check if the singleton method was well added.'
  starprize.congratulate if starprize.singleton_methods.include?('congratulate')

  p 'The same way, you can run this check on the method symbol:'
  starprize.congratulate if starprize.respond_to?(:congratulate)

  p 'I am creating a singleton class'
  another_starprize = Box.new('Star Prize')
  class << another_starprize
    def congratulate
      puts("You've won a fabulous holiday in Grimsby!")
    end
  end

  another_starprize.congratulate

  p "Singleton methods and classes looks quite similar concept, isn't it?"
  p 'You are right. When you create a singleton class, singleton methods are added to the item.'
  p "Let's run the check!"

  another_starprize.congratulate if another_starprize.singleton_methods.include?('congratulate')
  puts another_starprize.singleton_methods.include?('congratulate')

  puts "There's a bug that I can't see!"
end
