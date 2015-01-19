# module practice pg141
# Jonathan Cameron

# here's a module
module NumberStuff
	# use self. as alternative, 
	# more efficient, but preference :)
	def NumberStuff.random
		# random number generator
		rand(100000)
	end
end

# here's a module
module LetterStuff
	def LetterStuff.random
		(rand(26) + 65).chr
	end
end

puts NumberStuff.random
puts LetterStuff.random


module ToolBox
	class Ruler
		attr_accessor :length
	end
end

module Country
	class Ruler
		attr_accessor :name
	end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Ghengis Khan from Moskau"


puts a.length, b.name