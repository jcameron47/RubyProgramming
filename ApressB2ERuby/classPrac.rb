# class/object practice
# Jonathan Cameron

class Animal
	def initialize
		if defined?(@@number_of_animal)
			@@number_of_animal += 1
		else
			@@number_of_animal = 1
		end
	end

	def self.count
		@@number_of_animal
	end
end

class Human < Animal
	def initialize
		@name = "N/A"
		@height = "N/A"
		@gender = "N/A"
	end

	def self.talk
		puts "Hello!"
	end
end

x = Animal.new

a = Human.new
b = Human.new
c = Human.new

puts "Number of animals = #{Animal.count}"
puts "Number of humans  = #{Human.count}"