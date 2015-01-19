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
	

	#----------------------------------------------------------------------
	# load rooms from external text file
	def load_room(filename, object)		# pass filename through as string
		@filedata = File.readlines(filename)

		@ref = nil
		@na  = nil
		@desc = nil
		@conn = nil
		@hash = []

		count = 0

		@filedata.each do |line|
			if count == 0
				# pass/store symbol
				@ref = line

				count += 1
			elsif count == 1
				# pass/store string
				@na = line

				count += 1
			elsif count == 2
				# pass/store string
				@desc = line

				count += 1
			else
				# pass/store hash
				@hash = line.split(/\s+/) # try .to_sym after split

				count = 0

				puts @ref
				puts @na
				puts @desc
				puts @hash
				puts 

			end # ends if conditional
		end		# ends loop
	end 		# ends method
	#----------------------------------------------------------------------
	# add a room!
	def add_room(reference, name, description, connections)
		# push an instance into the rooms array
		@rooms << Room.new(reference, name, description, connections)
	end

	def start(location)
		@player.location = location
		show_current_description
	end

	def show_current_description
		if @player.location.equal?(nil)
			puts "location has been passed nil... fix it!"
		else
			puts find_room_in_dungeon(@player.location).full_description
		end
	end

	def find_room_in_dungeon(reference)
		@rooms.detect { |room| room.reference == reference }
	end

	def find_room_in_direction(direction)
		find_room_in_dungeon(@player.location).connections[direction]
	end

	def go(direction) # :west => :smallcave
		puts "You go " + direction.to_s
		@player.location = find_room_in_direction(direction)		# where things go wrong! 
		puts "No errors in go method"
		show_current_description
	end

	# struct shortcut
	# Player = Struct.new(:name, :location)
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

	# struct shortcut
	# Room = Struct.new(:reference, :name, :description, :connections)
	class Room		
		attr_accessor :reference, :name, :description, :connections

		def initialize(reference, name, description, connections)
			@reference = reference
			@name = name
			@description = description
			@connections = connections
		end

		def full_description
			@name + "\n\nYou are in " + @description
		end
	end
end

# Create the main dungeon object
# here we go! :D 
my_dungeon = Dungeon.new("Jonathan Cameron")

# Add rooms to the dungeon
my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", {
	:west => :smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave", {
	:east => :largecave, :south => :field})
my_dungeon.add_room(:field, "Field", "an open grassy field", {:north => :smallcave})

# Start the dungeon by placing the player in the large cave
my_dungeon.start(:largecave)

my_dungeon.go(:west)
my_dungeon.go(:east)
my_dungeon.go(:west)
my_dungeon.go(:south)



