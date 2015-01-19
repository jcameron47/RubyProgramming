# classes
# Jonthan Cameron

class Animal
end

class Human < Animal
	def initialize(name)
		gender = "N/A"
		name = name.nil? ? "N/A" : "#{name}"
		age = "N/A"
		height = "N/A"
	end
end

class Cat < Animal
	def initialize()
		@gender = "N/A"
		@name = "N/A"
		@age = "N/A"
	end
end

person00 = Human.new("Bob")

puts person00.@name
