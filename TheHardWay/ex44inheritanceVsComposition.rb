# learning how to simplify inheritance or 
# replace it with composition, and how
# meta-programming should be used sparingly

# - Jonathan Cameron

# example of implicit actions that happen when you 
# define a function in the parent,
# but not in the child

# class Parent

#   def override()
# 		puts "PARENT override()"
# 	end

# 	def implicit()
# 		puts "PARENT implicit()"
# 	end

# 	def altered()
# 		puts "PARENT altered()"
# 	end

# end

# class Child < Parent

#   def override()
# 		puts "CHILD override()"
# 	end

# 	def altered()
# 		puts "CHILD altered()"
# 		super()
# 		puts "CHILD, AFTER PARENT altered()"
# 	end
# end

# # super() with initialize - error with self
# # class Child1 < Parent
# # 	def initialize(self, stuff)
# # 		self.stuff = stuff
# # 		super()
# # 	end
# # end


# dad = Parent.new()
# son = Child.new()
# # superEx = Child1.new()

# dad.implicit()
# son.implicit()

# dad.override()
# son.override()

# dad.altered()
# son.altered()

# superEx.initialize(superEx,"shit")

# # Inheritance is useful, but another way to do the exact 
# same thing is just to use other classes and modules, rather than 
# rely on implicit inheritance. If you look at the three ways to 
# exploit inheritance, two of the three involve writing new code 
# to replace or alter functionality. This can easily be replicated 
# by just calling functions on another class or from a module. 
# Here's an example of doing this:

class Other

	def override()
		puts "OTHER override()"
	end

	def implicit()
		puts "OTHER implicit()"
	end

	def altered()
		puts "OTHER altered()"
	end
end

class Child2

	def initialize()
		@other = Other.new()
	end

	def implicit()
		@other.implicit()
	end

	def override()
		puts "CHILDS override()"
	end

	def altered()
		puts "CHILD, BEFORE OTHER altered()"
		@other.altered()
		puts "CHILD, AFTER OTHER altered()"
	end
end

son1 = Child2.new()

son1.implicit()
son1.override()
son1.altered()

# working this with a module

module Extra

	def Extra.override()
		puts "EXTRA override()"
	end

	def Extra.implicit()
		puts "EXTRA implicit()"
  end

  def Extra.altered()
  	puts "EXTRA altered()"
  end
end

class Chi

	def implicit()
		Extra.implicit()
	end

	def override()
		puts "CHI override()"
	end

	def altered()
		puts "CHI, BEFORE EXTRA alterer()"
		Extra.altered()
		puts "CHI, AFTER EXTRA altered()"
	end
end

dude = Chi.new()

dude.implicit()
dude.override()
dude.altered()


