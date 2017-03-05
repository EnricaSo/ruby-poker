require 'rubygems'
require './lib/ruby-poker'

hand1 = PokerHand.new("8H 9C TC JD QH")
hand2 = PokerHand.new(["3D", "3C", "3S", "KD", "AH"])
# puts hand1
# puts hand1.just_cards
# puts hand1.rank
# puts hand2
# puts hand2.rank

puts hand1 > hand2

hand3 = PokerHand.new(["4D", "4C", "4S", "4D", "AH"])
puts hand3 > hand2
hand4 = PokerHand.new(["AD", "AC", "AS", "4D", "AH"])
puts hand4 > hand2

# puts hand1 > hand2

hand5 = PokerHand.new(["2D", "2C", "2S", "KD", "AH"])
