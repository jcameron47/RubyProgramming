# Encapsulation practice
# Jonathan Cameron

class Person
	attr_accessor :name, :gender, :age; # semi-colon :D
	def initialize
		@name   = "N/A"
		@gender = "N/A"
		@age 		= "N/A"
	end

	def talk
		puts "Hello!"
	end

	def ageChange(age)
		@age = age
	end

	private :age, :gender
end

a = Person.new

puts a.talk

a.ageChange(47)

puts a.age