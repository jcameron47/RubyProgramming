# Jonathan Cameron
# The Dungeon Game
#
# This is part from the book Beginning Ruby
# Chapter 4. 
# I have extended on it to work further on my coding.
# This is a control file for the program

load "dungeon.rb"

# ask the player's name
puts "What is your name, traveller?"
print "Uu==D-"

# create the game instance, pass the name through
game = Dungeon.new(name = gets.chomp)
puts " "
game.load_room("dungeonLevels.txt")

