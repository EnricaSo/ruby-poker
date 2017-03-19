require 'rubygems'
require './lib/ruby_poker'

hand1 = PokerHand.new('8H 9C TC JD QH')
hand2 = PokerHand.new(%w(3D 3C 3S AD KH))
# puts hand1
# puts hand1.just_cards
# puts hand1.rank

puts hand1 > hand2

# Returns the best combo of the hand
puts hand1.rank
# Returns some score of the hand
puts hand2.score

# 10: ['Royal Flush',     :royal_flush?],
# 9: ['Straight Flush',  :straight_flush?],
# 8: ['Four of a kind',  :four_of_a_kind?],
# 7: ['Full house',      :full_house?],
# 6: ['Flush',           :flush?],
# 5: ['Straight',        :straight?],
# 4: ['Three of a kind', :three_of_a_kind?],
# 3: ['Two pair',        :two_pair?],
# 2: ['Pair',            :pair?],
# 1: ['Highest Card',    :highest_card?],
# 0: ['Empty Hand',      :empty_hand?]

# Stats
