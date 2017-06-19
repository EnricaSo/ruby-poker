require './lib/ruby_poker'

$nb_players = 4

deck = Deck.new
players_hand = []
$nb_players.times do
  players_hand.push(PokerHand.new)
end

2.times do
  $nb_players.times do |player|
    players_hand[player] << deck.deal
  end
end

board = []
3.times do
  board << deck.deal
end

# Turn
deck.deal
board << deck.deal

# River
deck.deal
board << deck.deal

# puts players_hand[0].to_s
# puts players_hand[1].to_s
# puts players_hand[2].to_s
# puts players_hand[3].to_s
# puts board

def modify_array(array)
  array << 'Chichito'
end

def not_modify_array(array)
  another_array = array.clone
  another_array << 'Chichito'
end

array = %w(ti amo)
modify_array(array)
puts array.join(' ')
