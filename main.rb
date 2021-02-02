require "./game"


puts "************************************"
puts "|                                  |"
puts "| Welcome to the Ruby Math Game    |"
puts "|                                  |"
puts "************************************"


puts "Please enter a name for Player 1"
print ">"
player_1 = gets.chomp

puts "Please enter a name for Player 2"
print ">"
player_2 = gets.chomp

new_game = Game.new(player_1, player_2)

new_game.start