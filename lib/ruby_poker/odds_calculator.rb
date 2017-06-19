require 'csv'
require 'date'
require './lib/ruby_poker'

def current_hand_odds(_starting_hand, _starting_board, _nb_opponents, _monte_carlo_rep)
  ahead = 0.0

  _monte_carlo_rep.times do
    player_hand = _starting_hand.clone
    another_board = [].replace _starting_board
    another_deck = Deck.new
    player_hand.to_a.length.times do |card|
      another_deck.burn(player_hand.to_a[card])
    end
    another_board << another_deck.deal while another_board.length < 5
    opponent_hand = PokerHand.new
    2.times do
      opponent_hand << another_deck.deal
    end
    another_board.each do |card|
      player_hand << card
      #   puts 'Player hand: ' + _starting_hand.to_a.map(&:to_s).join(' ')
      #   puts 'Player hand: ' + player_hand.to_a.map(&:to_s).join(' ')
      opponent_hand << card
    end
    # puts 'Player hand: ' + player_hand.to_s
    # puts 'Opponent hand: ' + opponent_hand.to_s
    if player_hand > opponent_hand
      ahead += 1
    elsif player_hand == opponent_hand
      ahead += 0.5
      end
  end
  probability_win = (ahead / _monte_carlo_rep) / _nb_opponents
  probability_win
end

def print_row_to_csv(_filename, _row)
  CSV.open(_filename, 'a', col_sep: "\;") do |csv|
    csv << _row
  end
end

d = DateTime.now
# time = d.strftime('%d_%m_%Y__%H_%M')
# date = d.strftime('%d_%m_%Y')
# filename = 'preflop' << '_' << date << '.csv'
filename = 'preflop.csv'
nb_opponents = 1

monte_carlo = Array.new(100, 1000)
starting_deck = Deck.new
starting_hand = PokerHand.new
# distribute 2 cards to the player
2.times do
  starting_hand << starting_deck.deal
end
starting_board = []
monte_carlo.each do |monte_carlo_rep|
  probability_win = current_hand_odds(starting_hand, starting_board, nb_opponents, monte_carlo_rep)
  csv_row = [starting_hand.just_cards, monte_carlo_rep.to_s, probability_win.to_s]
  print_row_to_csv(filename, csv_row)
end
