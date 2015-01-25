# Dungeon Text Adventure with Objects pg 149
# Jonathan Cameron
# 
# The game is in alpha version. All you can do right now is explore around.
# Monsters, Attacking, items, and everything else need to be added.
# 
# Rules (so far)
# The player is entered into an intial :location
# From there, the player has the choice to choose which direction to go.
#
# updates
# - load_room - allows you to load a room from an external file, thus being
#   able to create actual levels separately. Can make things nicer. :)


# Dungeon class
class Dungeon
  attr_accessor :player     # allows you to access the player attribute

  # pass player name through to pass
  # to the Player class parameter
  def initialize(player_name)

    # store instance of class Player
    @player = Player.new(player_name)

    # create an open array to store the rooms
    #[] == Array.new
    @rooms = []
  end
  
  # display methods that are within the class
  def methods()
    puts      "load_room(filename) "                                  
    puts      "add_room(reference, name, description, connections) "  
    puts      "start(location) "                                      
    puts      "show_current_description "                             
    puts      "find_room_in_dungeon(reference) "                      
    puts      "find_room_in_direction(direction) "                    
    puts      "go(direction) "        
    
  end

  #----------------------------------------------------------------------
  # load rooms from external text file
  def load_room(filename)   # pass filename through as string
    @filedata = File.readlines(filename)

    @reference    = []     # reference
    @name         = []     # name
    @description  = []     # description
    @connection   = []     # connection - hash :direction => :reference

    count = 0

    # each line will be stored, using the add_room structure
    @filedata.each do |line|
      
      if line == "end"
        exit
      elsif count == 0
        # pass/store symbol
        @reference << line.to_sym

        count += 1
      elsif count == 1
        # pass/store string
        @name << line

        count += 1
      elsif count == 2
        # pass/store string
        @description << line

        count += 1
      elsif count == 3
        # pass/store hash
        # @connection << line.split(/\th\t/).to_sym # try .to_sym after split
        @connection << Hash[ [line.split(" ").first, line.split(" ").last]]
        
        count += 1
      elsif count == 4
        # pass/store hash
        @connection << Hash[line.split(" ").first, line.split(" ").last]
         
        count += 1
      elsif count == 5
        # pass/store hash
        @connection << Hash[line.split(" ").first, line.split(" ").last]
         
        count += 1
      elsif count == 6
        # pass/store hash
        @connection << Hash[line.split(" ").first, line.split(" ").last]
        
        count += 1
      else
        count = 0
      end # ends if conditional
    end   # ends loop
    
    # display that levels are loaded
      puts "Levels Loaded"
  end
    
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
    @player.location = find_room_in_direction(direction)    # where things go wrong! 
    # puts "No errors in go method"
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





