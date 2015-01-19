# Scope of Constants
# Jonathan Cameron

def circumference_of_circle(radius)
	2 * Pi * radius
end

Pi = 3.141592
puts circumference_of_circle(10)

class OtherPlanet
	Pi = 4.5

	def self.circumference_of_circle(radius)
		radius * 2 * Pi
	end
end

class OtherWorld
	def self.circumference_of_circle(radius)
		radius * 2 * Pi
	end
end


puts OtherPlanet.circumference_of_circle(10)

puts OtherPlanet::Pi

puts Pi

puts OtherWorld.circumference_of_circle(10)

# produces a warning:  toplevel constant 
# Pi referenced by OtherWorld::Pi
puts OtherWorld::Pi
