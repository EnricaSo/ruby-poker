require './lib/ruby_poker'

#  (n k) = n! / k! (n-k)!

nc = 52 												# number of cards
nv = 13 												# number of values
nl = 4 													# number of lookup suits
ns = 10 												# number of suits per lookup
seh = 7													# size of extanded hand
soh = 5													# size of optimized hand
nh =  seh.among(nc)	# number of hands
puts nh
n10 = nl * 2.among(nc - 5)
puts n10
n9 = nl * (2.among(nc - 5) + (ns - 1) * 2.among(nc - 6))
puts n9
# n8 = nc * 3 * 2 * 1 * (nc - 4)
# n7 = nc * 3 * 2 * (nc-3) * 3
# n77 = nc * (nc-1) * 6 * 5
# n6 =
# n5 =
# n4 =
# n3 =
# n2 =
# n1 =
# n0 =

# 10: ['Royal Flush',    :royal_flush?],
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

# N.times do |i|
#   c1 = Card.new(i)
#   puts 'new i ' + i.to_s
#   (N - 1).times do |j|
#     c2 = Card.new(j)
#     puts 'new j ' + j.to_s
#     (N - 2).times do |k|
#       c3 = Card.new(k)
#       (N - 3).times do |l|
#         c4 = Card.new(l)
#         puts 'new l ' + l.to_s
#         (N - 4).times do |m|
#           c5 = Card.new(m)
#
#           # create hand
#           hand = PokerHand.new([c1, c2, c3, c4, c5])
#         end
#       end
#     end
#   end
# end
