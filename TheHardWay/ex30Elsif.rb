# working with if/ elsif statements
# - Jonathan Cameron


# sorting method - needs minor fixing to get order sorted correctly
def sortItem(*args)
	temp = 0
	arg1, arg2, arg3 = args

	if arg1 < arg2 and arg2 < arg3
		puts "Items sorted"
	 elsif arg3 > arg1
			temp = arg3
			arg3 = arg1
			arg1 = temp
	elsif arg1 > arg2
			temp = arg1
			arg1 = arg2
			arg2 = temp
	elsif arg2 > arg3
		temp = arg2
		arg3 = arg2
		arg2 = temp
	end

	puts "Sorted: %d %d %d" % [arg1,arg2,arg3]
end




puts "Please enter 3 numbers:"

num1 = STDIN.gets.chomp()
num2 = STDIN.gets.chomp()
num3 = STDIN.gets.chomp()

puts "You have entered #{num1}, #{num2}, #{num3}"

sortItem(num1,num2,num3)

puts "The numbers sorted: #{num1}, #{num2}, #{num3}"

# Program: Success
