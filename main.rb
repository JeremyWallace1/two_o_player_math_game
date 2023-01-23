require "question.rb"
require "player.rb"

Player1 = {name: "Player1", lives: 3}
Player2 = {name: "Player2", lives: 3}
player_turn = Player1[:name]
question = "What does 5 plus 3 equal?"
answer = 8

while (Player1[:lives] > 0 && Player2[:lives] > 0)
  puts "#{player_turn}: #{question}" 
  player_answer = gets.chomp.to_f
  if answer == player_answer
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    if player_turn == Player1[:name]
      Player1[:lives] -= 1
    else
      Player2[:lives] -= 1
    end
  end
  if player_turn == Player1[:name]
    player_turn = Player2[:name]
  else
    player_turn = Player1[:name]
  end
  puts "P1: #{Player1[:lives]}/3 vs P2: #{Player2[:lives]}/3"
  puts "------ NEW TURN -----"
end

if Player1[:lives] == 0
  winner = Player2[:name]
  score = Player2[:lives]
else
  winner = Player1[:name]
  score = Player1[:lives]
end

puts "#{winner} wins with a score of #{score}/3!"
puts "----- GAME OVER -----"
puts "Good bye!"