# Dungeon Text Adventure with Objects pg 149
# Jonathan Cameron

# Dungeon class
class Dungeon
	attr_accessor :player

	# pass player name through to pass
	# to the Player class parameter
	def initialize(player_name)
		# store instance of class Player
		@player = Player.new(player_name)
		# create an open array to store the rooms
		@rooms = []
	end

	# nested class - Player
	class Player
		# allow get/set for these class objects
		attr_accessor :name, :location

		# pass the player's name through
		# to store within the Player instance
		def initialize(player_name)
			@name = player_name
		end
	end

	# 
	class Room
		#
		attr_accessor :reference, :name, :description, :connections

		def initialize(reference, name, description, connections)
			@reference = reference
			@name = name
			@description = description
			@connections = connections
		end
	end
end