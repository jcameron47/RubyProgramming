# Experimenting with def 

#method that multiplies by 47
def multiMyNum(arg1)
	num = 47 * arg1.to_i		# program wouldn't work without type conversion
	return num
end

puts "This program multiples your number with 47"
puts "Number to multply"
print "?> "
userNum = gets.chomp()

userAnswer = multiMyNum(userNum)

puts "The answer is #{userAnswer}"

# program: success