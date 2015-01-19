# - This .rb is to store my gambling methods
# n what nots
# - Jonathan Cameron

class Gamble

	def initialize()
			# a single die
		@die = [1,2,3,4,5,6]
		#dieStorage = @die[rand(@die.length())]
	end
	

	# returns a number 1 - 6 random
	def dieRoll()
		return 1 + rand(6)
	end

	# returns a 2 dice roll
	def diceRoll()
		return 2 + rand(6) + rand(6)
	end



	# Displays the roll for one die
	def crapsDisplayDie(x)

		puts "   ________ "
		puts "  /       /|"
		puts " /_______/ |"
		puts "|       |  |"
		puts "|    #{x}  | / "
		puts "|_______|/  "
	end

	# Displays the roll for two dice
	def crapsDisplayDice(x,y)

		puts "   ________       ________  "
		puts "  /       /|     /       /| "
		puts " /_______/ |    /_______/ | "
		puts "|       |  |   |       |  | "
		puts "|  #{x}    | /    |     #{y} | /  "
		puts "|_______|/     |_______|/   "
	end
end

# object = Gamble.new()

# puts object.crapsDisplayDice(object.dieRoll(),object.dieRoll())

# puts object.crapsDisplayDie(object.dieRoll())


