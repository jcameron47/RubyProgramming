# more module prac pg142
# Jonathan Cameron

# create a module to mix-in
module UsefulFeatures
	# method
	def class_name
		# UsefulFeatures.class.to_s = 
		# display class in string format
		self.class.to_s
		puts rand(10)
	end

	class Tanks
		# method of class Tanks
		def cannon(damage)	# damage = number of points of damage
			# create an object to store
			# the damaged pass through
			# and a random number between
			# 0 and 5
			@total = damage + rand(6)
			puts @total
		end
	end
end

# class outside of module scoop, pulling 
# in what the module has through
# include (module name)
class Person
	# include - pulls in all classes,
	# methods, constants, yes, da?
	include UsefulFeatures
end

# object of class Person is instantiated(created)
x = Person.new

# display Person.class_name (method)
puts x.class_name

# instantiation of object z(we store
	# what's in Person, which uses include
	# to pull in what was in the module
	# UsefulFeatures, so, it has access 
	# to all that's within the module)
z = Person::Tanks.new

# display method call of object z
# with a number passed through the
# parameter
puts z.cannon(47)


# more module practice

# module
module AnotherModule
	# method
	def do_stuff
		# display string
		puts "This is a test"
	end # end method
end	# end module

# allows access to what's in
# the module above
include AnotherModule
include UsefulFeatures
do_stuff
class_name

