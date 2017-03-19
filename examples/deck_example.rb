require 'rubygems'
require './lib/ruby_poker'

deck = Deck.new
puts 'Deck size: ' + deck.size.to_s
puts deck.deal
puts 'Deck size: ' + deck.size.to_s
puts deck.burn('Jd')
puts 'Deck size: ' + deck.size.to_s
puts deck.empty_it(false)
puts 'Deck size: ' + deck.size.to_s
puts 'Is deck empty? ' + (deck.empty? ? 'Indeed' : 'No, it is not.')
