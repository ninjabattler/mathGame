require './player.rb'
require './question.rb'
require './turn.rb'

print "|Player 1, please enter your name: "
player_1 = Player.new(gets.chomp)
puts '|'
print "|Player 2, please enter your name: "
player_2 = Player.new(gets.chomp)

game = Turn.new(player_1, player_2)

game.next_turn