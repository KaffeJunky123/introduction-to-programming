TRICK_TABLE = { :Rock => %i(Lizard Scissors),
                :Paper => %i(Spock Rock), 
                :Scissors => %i(Lizard Paper), 
	              :Spock => %i(Rock Scissors),
                :Lizard => %i(Spock Paper)
              }.freeze

ALLOWED_INPUT = { :Rock => %w(rock r),
                  :Paper => %w(paper p), 
                  :Scissors => %w(scissors s),
                  :Spock => %w(spock sp),
                  :Lizard => %w(lizard l)
                }.freeze

def prompt(msg)
  puts "=>#{msg}"
end

def read_user_move
  loop do
    result = gets.chomp.downcase
    ALLOWED_INPUT.each {|key, value| value.include?(result) ? result = key : next}
    break result unless result.is_a?(String)
    prompt('Invalid choice! Enter: rock(r) paper(p) scissor(s) spock(sp) lizard(l)')
  end
end 

def play(user_move, computer_move)
  if computer_move == user_move
    0
  elsif TRICK_TABLE[computer_move].include?(user_move)
    -1
  else
    1
  end
end

def repeat_game?
  answer = gets.chomp.downcase
  "y" == answer
end

def print_results(result, user_move, computer_move, user_score, computer_score)
  res_string = {-1 => "Loss", 1 => "Win", 0 => "Draw"}
  prompt("#{res_string[result]} #{user_move} vs #{computer_move}: user score is #{user_score}, computer score is #{computer_score}")
end
 
prompt('Welcome to Rock Paper Scissors Spock Lizard!')
user_score = 0
computer_score = 0

loop do
  prompt('Chose your weapon: rock(r), paper(p), scissors(s), spock(sp), lizard(l)')
  user_move = read_user_move
  computer_move = TRICK_TABLE.keys.sample
  result = play(user_move, computer_move)
  user_score += result unless result == -1
  computer_score += -result unless result ==1
  print_results(result, user_move, computer_move, user_score, computer_score)
  if user_score > 4 || computer_score > 4
    prompt("You #{user_score > 4 ? "won" : "lost"}, do you want to play again? (y/n)")
    break unless repeat_game?
    user_score = 0
    computer_score = 0
  end
end

