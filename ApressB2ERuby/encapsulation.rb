# Encapsulation practice
# Public, private, and protected
# Jonathan Cameron

# class Person
# 	def initialize(name)
# 		set_name(name)
# 	end

# 	def name
# 		@first_name + ' ' + @last_name
# 	end

# 	def set_name(name)
# 		first_name, last_name = name.split(/\s+/)
# 		set_first_name(first_name)
# 		set_last_name(last_name)
# 	end

# 	def set_first_name(name)
# 		@first_name = name;
# 	end

# 	def set_last_name(name)
# 		@last_name = name
# 	end

# 	def first_name
# 		@first_name
# 	end

# 	def last_name
# 		return @last_name
# 	end
# end

# print "Please enter you first and last name: "

# name = gets.chomp

# person = Person.new(name)

# puts person.name
# puts person.first_name
# puts person.last_name

# now the above code, with a private thrown
# in there

# class Person
# 	def initialize(name)
# 		set_name(name)
# 	end

# 	def name
# 		@first_name + ' ' + @last_name
# 	end

# # access modifiers (right? :P)
# 	private

# 	def set_name(name)
# 		first_name, last_name = name.split(/\s+/)
# 		set_first_name(first_name)
# 		set_last_name(last_name)
# 	end

# 	def set_first_name(name)
# 		@first_name
# 	end

# 	def set_last_name(name)
# 		@last_name = name
# 	end
# end

# p = Person.new("Jonny Appleseed")
# p.set_last_name("Dude")

class Person
	def initialize(age)
		@age = age
	end

	def age
		@age
	end

	def age_difference_with(other_person)
		(self.age - other_person.age).abs
	end

	protected :age
end

jonny = Person.new(31)
madi = Person.new(27)

puts jonny.age_difference_with(madi)
puts madi.age

