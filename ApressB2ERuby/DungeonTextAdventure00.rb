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
		#[] == Array.new
		@rooms = []
	end

	# struct shortcut
	Player = Struct.new(:name, :location)
	# nested class - Player
	# class Player
	# 	# allow get/set for these class objects
	# 	attr_accessor :name, :location

	# 	# pass the player's name through
	# 	# to store within the Player instance
	# 	def initialize(player_name)
	# 		@name = player_name
	# 	end
	# end

	# struct shortcut
	Room = Struct.new(:reference, :name, :description, :connections)
	class Room
		def full_description
			@name + "\n\nYou are in " + @description
		end
	end
	# class Room
	# 	#
	# 	attr_accessor :reference, :name, :description, :connections

	# 	def initialize(reference, name, description, connections)
	# 		@reference = reference
	# 		@name = name
	# 		@description = description
	# 		@connections = connections
	# 	end
	# end

	# add a room!
	def add_room(reference, name, description, connections)
		# push an instance into the rooms array
		@rooms << Room.new(reference, name, description, connections)
	end

	def start(location)
		@player.location = location
		show_currenct_description
	end

	def show_current_description
		puts find_room_in_dungeon(@player.location).full_description
	end

	def find_room_in_dungeon(reference)
		@rooms.detect do |room| 
			room.reference == reference 
		end
	end


end