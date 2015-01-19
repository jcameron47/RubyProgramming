# Creating a class Game, that allows me to
# practice with def(methods) and attributes(@)
# and allowing me to understand how method 
# and attribute calls work

# - Jonathan Cameron



# create the class Game
class Game

	#initialize the class while passing an
	#argument through(start)
	def initialize(start)
		@quips = [
			"You died.  You kinda suck at this.",
			"Nice job, you died  ...jackass,",
			"Such a loooozer.",
			"I have a stick that's better at this."
		]

		# store the argument passed, which is a function
		@start = start
	end

	# displays the prompt
	def prompt()
		print "> "
	end

  # runs the game
	def play()
		next_room = @start    # store the starting function to object

    # loop runs forever until :death or if you get to :escape_pod win
		while true
			puts "\n--------------"
			room = method(next_room) # store room method into object
			next_room = room.call()  # call that object
		end
	end

	def death()
		puts @quips[rand(@quips.length())]  # display random quip
		Process.exit(1)   # exit with error
	end

	# central corridor room
	def central_corridor()
		puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
    puts "your entire crew.  You are the last surviving member and your last"
    puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
    puts "put it in the bridge, and blow the ship up after getting into an "
    puts "escape pod."
    puts "\n"
    puts "You're running down the central corridor to the Weapons Armory when"
    puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
    puts "flowing around his hate filled body.  He's blocking the door to the"
    puts "Armory and about to pull a weapon to blast you."

    puts "The following typed actions are available:"
    puts "1. shoot!"
    puts "2. dodge!"
    puts "3. tell a joke"

    prompt()
    action = gets.chomp()


    if action == "shoot!"
    	puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
      puts "His clown costume is flowing and moving around his body, which throws"
      puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
      puts "completely ruins his brand new costume his mother bought him, which"
      puts "makes him fly into an insane rage and blast you repeatedly in the face until"
      puts "you are dead.  Then he eats you."
      return :death

    elsif action == "dodge!"
    	puts "Like a world class boxer you dodge, weave, slip and slide right"
      puts "as the Gothon's blaster cranks a laser past your head."
      puts "In the middle of your artful dodge your foot slips and you"
      puts "bang your head on the metal wall and pass out."
      puts "You wake up shortly after only to die as the Gothon stomps on"
      puts "your head and eats you."
      return :death

    elsif action == "tell a joke"
    	puts "Lucky for you they made you learn Gothon insults in the academy."
      puts "You tell the one Gothon joke you know:"
      puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
      puts "While he's laughing you run up and shoot him square in the head"
      puts "putting him down, then jump through the Weapon Armory door."
      return :laser_weapon_armory

    else
    	puts "DOES NOT COMPUTE!"
    	return :central_corridor	#return to the beginning of central_corridor
		end
	end

	def laser_weapon_armory()
		puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
    puts "for more Gothons that might be hiding.  It's dead quiet, too quiet."
    puts "You stand up and run to the far side of the room and find the"
    puts "neutron bomb in its container.  There's a keypad lock on the box"
    puts "and you need the code to get the bomb out.  If you get the code"
    puts "wrong 10 times then the lock closes forever and you can't"
    puts "get the bomb.  The code is 3 digits."
    code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1] # creates 3 randomn digits
    puts "Test: code - %s" % code  # test to see if code works
    print "[keypad]> "
    guess = gets.chomp()
    guesses = 0

    # allow the user to guess up to 10 times unless correct guess 
    while guess != code and guesses < 9
      puts "BZZZZZZEDDDD!"
      puts "That is guess ##{guesses + 1}"
      guesses += 1

      if guesses == 9
        puts "This is your final chance!"
      end

      print "[keypad]> "
      guess = gets.chomp()
    end

    # successful guess
    if guess == code
      puts "The container clicks open and the seal breaks, letting gas out."
      puts "You grab the neutron bomb and run as fast as you can to the"
      puts "bridge where you must place it in the right spot."
      return :the_bridge
    else # fail - pass death method
      puts "The lock buzzes one last time and then you hear a sickening"
      puts "melting sound as the mechanism is fused together."
      puts "You decide to sit there, and finally the Gothons blow up the"
      puts "ship from their ship and you die."
      return :death
    end
  end

  def the_bridge()
    puts "You burst onto the Bridge with the neutron destruct bomb"
    puts "under your arm and surprise 5 Gothons who are trying to"
    puts "take control of the ship.  Each of them has an even uglier"
    puts "clown costume than the last.  They haven't pulled their"
    puts "weapons out yet, as they see the active bomb under your"
    puts "arm and don't want to set it off."

    puts "The following typed actions are available:"
    puts "1. throw the bomb"
    puts "2. slowly place the bomb"
    prompt()
    action = gets.chomp()

    if action == "throw the bomb"
      puts "In a panic you throw the bomb at the group of Gothons"
      puts "and make a leap for the door.  Right as you drop it a"
      puts "Gothon shoots you right in the back killing you."
      puts "As you die you see another Gothon frantically try to disarm"
      puts "the bomb. You die knowing they will probably blow up when"
      puts "it goes off."
      return :death

    elsif action == "slowly place the bomb"
      puts "You point your blaster at the bomb under your arm"
      puts "and the Gothons put their hands up and start to sweat."
      puts "You inch backward to the door, open it, and then carefully"
      puts "place the bomb on the floor, pointing your blaster at it."
      puts "You then jump back through the door, punch the close button"
      puts "and blast the lock so the Gothons can't get out."
      puts "Now that the bomb is placed you run to the escape pod to"
      puts "get off this tin can."
      return :escape_pod
    else
      puts "DOES NOT COMPUTE!"
      return :the_bridge
    end
  end

  def escape_pod()
    puts "You rush through the ship desperately trying to make it to"
    puts "the escape pod before the whole ship explodes.  It seems like"
    puts "hardly any Gothons are on the ship, so your run is clear of"
    puts "interference.  You get to the chamber with the escape pods, and"
    puts "now need to pick one to take.  Some of them could be damaged"
    puts "but you don't have time to look.  There's 5 pods, which one"
    puts "do you take?"

    good_pod = rand(5)+1

    puts "Good pod = #{good_pod}"  # test the code with answer
    print "[pod #]> "
    guess = gets.chomp()

    if guess.to_i != good_pod
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod escapes out into the void of space, then"
      puts "implodes as the hull ruptures, crushing your body"
      puts "into jam jelly."
      return :death
    else
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod easily slides out into space heading to"
      puts "the planet below.  As it flies to the planet, you look"
      puts "back and see your ship implode then explode like a"
      puts "bright star, taking out the Gothon ship at the same"
      puts "time.  You won!"
      Process.exit(0)
    end
  end
end


# create instance of class Game in object a_game, passing the beginning room
a_game = Game.new(:central_corridor)
# start the game
a_game.play()
