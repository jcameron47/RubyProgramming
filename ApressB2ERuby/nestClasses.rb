# Nested classes
# Jonathan Cameron

# class Drawing
# 	class Line
# 	end

# 	class Circle
# 	end
# end

class Drawing
	def self.give_me_a_circle
		Circle.new
	end

	class Line
	end

	class Weapon
		class Bolt
			def lock_and_load
				"Chek Chekkk"
			end
		end
	end

	class Circle
		def what_am_i
			"This is a circle"
		end
	end
end


a = Drawing.give_me_a_circle
puts a.what_am_i

a = Drawing::Circle.new
puts a.what_am_i

gun = Drawing::Weapon::Bolt.new
puts gun.lock_and_load

# gun = Drawing.Weapon.Bolt.lock_and_load
# puts gun.lock_and_load

a = Circle.new
puts a.what_am_i

