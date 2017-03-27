require './lib/ruby_poker'


  $royal_flush = 10
  $straight_flush = 9
  $four_of_a_kind = 8
  $full_house = 7
  $flush = 6
  $straight = 5
  $three_of_a_kind = 4
  $two_pair = 3
  $pair = 2
  $high_card = 1

nc = 52 												# number of cards
nv = 13 												# number of values
nl = 4 													# number of lookup suits
ns = 10 												# number of suits per lookup
seh = 7													# size of extanded hand
#soh = 5													# size of optimized hand
nh =  seh.among(nc)										# number of hands
puts nh
n_comb = Array.new(10)
n_comb[$royal_flush] = nl * 2.among(nc - 5)
n_comb[$straight_flush] = nl * ((ns - 1) * 2.among(nc - 6))
#n910 = nl * (2.among(nc - 5) + (ns - 1) * 2.among(nc - 6))
n_comb[$four_of_a_kind] = nv * 3.among(nc-4)
n_comb[$full_house] = nl*6*nl*nl*nv*(nv-1)*2.among(nv-2)+nl*nl*nl*2.among(nv)*(nv-2)+nl*6*6*nv*2.among(nv-1)
n_comb[$flush] = nl*(5.among(nv)*2.among(3*nv)+3*nv*6.among(nv)+7.among(nv)-(2.among(4*nv-5)+(ns-1)*2.among(nc-6)))
n_comb[$straight] = 15540*(2.among(nv-5) + (ns-1)*2.among(nv-6))+35640*((nv-5)+(ns-1)*(nv-6))+27740*ns
n_comb[$three_of_a_kind] = 20*253*(5.among(nv)-ns)
n_comb[$two_pair] = 3.among(nv)*(2.among(4))**3*1.among(nv-3)*nl+(5.among(nv)-ns)*2.among(5)*(2.among(4))**2*(4**3-1)
n_comb[$pair] = (6.among(nv)-(1.among(nv-5)+(ns-1)*1.among(nv-6)))*1.among(6)*2.among(4)*(4**5-(4+1.among(2)*4.among(5)*3))
n_comb[$high_card] = (7.among(nv)-(2.among(nv-5)+(ns-1)*2.among(nv-6)))*(nl**7-4*(1+3*6.among(7)+3*3*5.among(7)))

puts n_comb

# n0 =

# 10: ['Royal Flush',     :royal_flush?],

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
