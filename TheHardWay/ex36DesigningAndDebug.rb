# This is my project to practice all of the
# knowledged I've gone over. 
# The program is a craps game.
# There are two dice, and basic rules to go by.
# 


# store/retrieve currency data
# require './bank'

	# open intro.txt file
	

	

def Craps()

	# pull in methods to use for the dice
	require './gamble'
	intro = File.open("intro.txt")
	# game loop
	gameRun = true 
	# bank roll
	money = 1000
	# start game

	while gameRun

		# runs the crap game loop
		crapGame = true
		# runs the second number loop
		secondRound = true
		# runs loop until inputs are correct
		check = true

		# Read out the intro
		puts intro.read()

		# Display your total money
		# puts "Your funds are: $#{money}"
		# puts "Please enter your bet: "
		# print "?> "; bet = gets.chomp

		# hit button to start game
		puts "Hit enter to start"
		STDIN.gets.chomp

		puts "First roll"
		while crapGame
			puts "Your roll:"
			roll = Gamble.diceRoll()
			storedNum = roll
			puts Gamble.crapsDisplay(roll)

			if roll == 2 or roll == 3 or roll == 12
				puts "You crapped out, you lose"
				crapGame = false
			elsif roll == 7 or roll == 11
				puts "You won! Woohoo!"
				crapGame = false
			else
				while secondRound

					puts "Hit a key to roll again!"
					STDIN.gets.chomp
					
					puts "Your roll:"
					roll = Gamble.diceRoll()
					puts Gamble.crapsDisplay(roll)

					if storedNum == roll
						puts "You won! You got your number #{storedNum}"
						secondRound = false
					elsif roll == 7 
						puts "You got a 7, you lose... "
						secondRound = false
					else
						puts "Roll again!"
						STDIN.gets.chomp
					end

					crapGame = false
				end
			end			

			while check
				puts "Do you want to play again?"
				print "y/n - "
				choice = STDIN.gets.chomp()

				if choice == "y"
					puts "restarting loop..."
					check = false
				elsif choice == "n"
					puts "exiting loop/program"
					gameRun = false
					check = false
				else 
					puts "Huh? Please try again... "
				end
			end
		end
	end
end	

Craps()










