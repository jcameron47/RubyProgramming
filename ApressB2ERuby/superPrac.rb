# super practice
# Jonathan Cameron

class Animal
	def initialize()
		@type = "species"
	end

	def type
		puts @type
	end
end

class Human < Animal
	def initialize()
		@type = "Human " + super
	end
end

a = Human.new

puts a.type

