require "./question.rb"
require "./player.rb"
require 'colorize'

names_set = false
Player1 = Player.new
Player2 = Player.new

while (Player1.lives > 0 && Player2.lives > 0)
  if names_set == false
    puts "What is " + "Player1".black.on_white + "'s name?"
    Player1.name = gets.chomp.blue
    puts "What is " + "Player2".black.on_white + "'s name?"
    Player2.name = gets.chomp.green
    names_set = true
    player_turn = Player1.name
    puts "#{Player1.name} vs #{Player2.name}: " +  "GAME ON!!!".red.on_blue.bold
  else
    puts "------ NEW TURN -----"
  end
  new_question = Question.new
  puts "#{player_turn}: #{new_question.question}"
  player_answer = gets.chomp.to_i
  if new_question.answer == player_answer
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    if player_turn == Player1.name
      Player1.lives -= 1
    else
      Player2.lives -= 1
    end
  end
  if player_turn == Player1.name
    player_turn = Player2.name
  else
    player_turn = Player1.name
  end
  puts "P1: #{Player1.lives}/3 vs P2: #{Player2.lives}/3"
  puts " "
end

if Player1.lives == 0
  winner = Player2.name
  score = Player2.lives
else
  winner = Player1.name
  score = Player1.lives
end

puts "#{winner} wins with a score of #{score}/3!".black.on_light_cyan
puts "----- GAME OVER -----"
puts "Good bye!"