# Understanding the differences between
# classes, modules, and objects
# - Jonathan Cameron
file = File.open("test.txt")	#practice with file inputs
require './gamble'

class Song

	# I just tested calling these variables
	# by trying different methods, and have 
	# come across something of note. If you
	# call a variable from a list of mulitple
	# variables like below, it will return
	# the called variable, and all variables
	# that are below the called variable.
	# test by running this program and
	# observe the last couple of lines.
	# **** Caution using multiple variables. ****
	def initialize(lyrics)
		@lyrics = lyrics
		@variable = "Test variable"
		@whatever = 47
		@ok				= "Added line"
	end

		attr_reader :variable
		# attr_reader :whatever
		# attr_reader :ok

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end

	def variable()
		puts @variable
		puts @whatever
		puts @ok
	end
	
end

justin = {"height" => 72, "weight" => 190}

puts justin["height"]

happy_bday = Song.new(["Happy birthday to you",
										"I don't want to get sued",
										"So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
												"With pockets full of shells"])

input = file.read()
test = Song.new([input])

happy_bday.sing_me_a_song

test.sing_me_a_song

bulls_on_parade.sing_me_a_song

puts happy_bday.variable

#practice using require and call methods
puts "Lets roll the dice!"
puts Gamble.crapsDisplay(Gamble.dieRoll())


	

