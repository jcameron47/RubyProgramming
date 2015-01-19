# - messing with unless
# - plus multiple lessons through
# - Ch2 - Ch3

# - Jonathan Cameron

# return a response for the user's age
def checkAge(x)
	if x >= 0 && x < 10
		puts "You are a kid."
	elsif x >= 10 && x < 18
		puts "You are a big kid"
	elsif x >= 18 && x < 70
		puts "You are an adult"
	elsif x >= 70
		puts "You are old!"
	else
		puts "Ok..."
	end
end

def legalAge(x)
	unless x >= 18
		puts "You are not of legal age. Sorry :("
	else
		puts "Legal age, time for plow!"
	end
end

# between? bool method
def numCheck()
	puts "Between numbers check:"
	puts "Please enter the starting num: "
	print "?> "

	first_num = gets.chomp.to_i

	puts "Please enter the end num: "
	print "?> "

	second_num = gets.chomp.to_i

	puts "Please enter the num to check scope:"
	print "?> "

	check_num = gets.chomp.to_i

	if check_num.between?(first_num, second_num)
		puts "The number #{check_num} is between #{first_num} and #{second_num}"
	else
		puts "The number #{check_num} is  not between #{first_num} and #{second_num}"
	end
end

# if you want to anchor to the absolute start or end of a string, you can use \A and \Z, respectively,
# whereas ^ and $ anchor to the starts and ends of lines within a string.

# /^ - anchor to the beginning of the string
# .. - period(.) <- boobie are used for individual char spaces
def wordReplaceFront(x)
	puts "Enter Text to add: "
	input = gets.chomp

	puts x.sub(/^..../, input)
end

# $/ - used to anchor to the end of the string(reverse-ish)
def wordReplaceBack(x)
	puts "Enter Text to add: "
	input = gets.chomp

	puts x.sub(/....$/, input)
end

