# Actually, I'm learning to use case 
# Jonathan Cameron

fruit = "orange"

puts "fruit = #{fruit}"

print "The color is "

case fruit
	when "orange"
		color = "orange"
	when "apple"
		color = "green"
	when "banana"
		color = "yellow"
	else
		color = "unknown"
	end

print color

puts 

case fruit
	when "orange"
		color = "orange"
		puts "I'z orange, yo!"
	when "apple"
		color = "green"
	when "banana"
		color = "yellow"
	else
		color = "unknown"
	end