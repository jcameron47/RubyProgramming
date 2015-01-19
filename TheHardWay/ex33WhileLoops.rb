# Learning to play with while loops - ya!
# - Jonathan Cameron

# functions
	# Counting function
def counter(number, inc)	
	i = 0
	numbers = []

	for i in (0..number)
		puts "At the top i is #{i}"
		numbers.push(i)

		i += inc
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end

	puts "The numbers: "

	for num in numbers
		puts num
	end
end

animals = ['bear','kitty','doo doo']


counter(20,2)
puts animals[1]
# Program: Success!

