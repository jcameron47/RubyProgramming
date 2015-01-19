# classes
# Jonthan Cameron

class Shape
	end

class Square
	def initialize(side_length)
		@side_length = side_length
	end

	def area
		@side_length * @side_length
	end
end

a = Square.new(10)
b = Square.new(47)
puts a.area
puts b.area

