# working the differences between is-a and has-a
# - Jonathan Cameron

## Animal is-a object look at the extra credit
class Animal
	end

	## ??
	class Dog < Animal

		def initialize(name)
			## ??
			@name = name
		end
	end

	## ??
	class Cat < Animal

		def initialize(name)
			## ??
			@name = name
		end
	end

	##??
	class Person

		def initialize(name)
			## ??
			@name = name

			## Person has-a pet of some kind
			@pet = nil
		end

		attr_accessor :pet
	end

	## ??
	class Employee < Person

		def initialize(name, salary)
			## ?? hmm what is this strange magic?
			super(name)
			## ??
			@salary = salary
		end

		# accessor
		def getName
			@name
		end

		def getSalary
			@salary
		end

	end

	## ?? 
	class Fish
	end

	## ??
	class Salmon < Fish
	end

	## ??
	class Halibut < Fish
	end

	
## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet = "Satan"
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()

x = frank.getName
y = frank.getSalary

puts x, y