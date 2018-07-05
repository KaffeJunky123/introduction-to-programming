def setup_deck
  (1..52).to_a.shuffle
end

def card_suit(card)
  (card < 14 ? "diamonds" :
    (card < 27 ? "heart" :
      (card < 40 ? "spades": "clubs")))
end

def card_face(card)
  face_cards = [10, 23, 36, 49].map{|x| [x, "Jack"]}.concat(
              [11, 24, 37, 50].map{|x| [x, "Queen"]}).concat(
               [12, 25, 38, 51].map{|x| [x, "King"]}).concat(
                [13, 26, 39, 52].map{|x| [x, "Ace"]}).to_h
  face_cards[card]
end

def card_name(card)
  val = card_value(card)
  suit = card_suit(card)
  face = card_face(card)
  return "#{face} of #{suit}" if face
  "#{val} of #{suit}"
end

def card_value(card)
  while card>=14
    card-=13
  end
  case card
  when 1..9
    card+1
  when 10..12
    10
  else
    [1,11]
  end
end

def hand_value(cards)
  if cards.map{|card| card_face(card)}.include?("Ace")
    sum = cards.map{|card| card_value(card)}.flatten.reduce(:+)
    return sum-1 if sum<=22
    sum-11
  else
    cards.map{|card| card_value(card)}.reduce(:+)
  end
end

def deal_cards(deck)
  [deck.shift(2), deck.shift(2)]
end

def busted?(cards)
  hand_value(cards)>21
end

def player_print(cards)
  card_names = cards.map{|card| card_name(card)}.join(" and ")
  puts "You have: #{card_names}"
end

def player_turn(deck, cards)
  answer = nil
  loop do
    puts "hit or stay?"
    answer = gets.chomp
    break if answer == "stay" || busted?((cards<<deck.shift))
    player_print(cards)
  end
  if busted?(cards)
    player_print(cards)
    puts "you busted!"
  end
  cards
end

def dealer_reveal(cards)
  dealer_print(cards[0,1])
end

def dealer_print(cards)
  card_names = cards.map{|card| card_name(card)}.join(" and ")
  puts "Dealer has: #{card_names}"
end

def dealer_turn(deck, cards)
  while hand_value(cards)<17
    break if busted?(cards<<deck.shift)
    dealer_print(cards)
  end
  if busted?(cards)
    puts "dealer busted!"
  end
  cards
end

def print_winner(res)
  results = [ "draw", "you win!", "dealer wins!" ]
  puts results[res]
end

def winner(player, dealer)
  hand_value(player)<=>hand_value(dealer)
end
def play_again?
  puts "enter yes to play again: "
  /^y|^yes/.match?(gets.chomp)
end

def play
  loop do
    deck = setup_deck
    player, dealer = deal_cards(deck)
    dealer_reveal(dealer)
    player_print(player)
    player = player_turn(deck, player)
    if busted?(player)
      redo if play_again?
      exit
    end
    dealer = dealer_turn(deck, dealer)
    if busted?(dealer)
      redo if play_again?
      exit
    end
    res = winner(player, dealer)
    print_winner(res)
    exit unless play_again?
  end
end
