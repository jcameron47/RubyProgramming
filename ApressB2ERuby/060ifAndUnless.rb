# working with if and unless flow control
# Jonathan Cameron

age = 10
print "age = %d\n" % age

if age < 18
	puts "You're too young to use this system" 
	puts "Exiting program"
else
	puts "Lets get adultish"
end

age = 18
puts "Age now equals #{age}"

if age < 18
	puts "You're too young to use this system" 
	puts "Exiting program"
	exit #force exits the program
else
	puts "Lets get adultish"
end

age = 10
print "age = %d\n" % age

unless age >= 18
	puts "You're too young to use this system" 
	puts "Exiting program"
else
	puts "Lets get adultish"
end

age = 18
puts "Age now equals #{age}"

unless age >= 18
	puts "You're too young to use this system" 
	puts "Exiting program"
	exit #force exits the program
else
	puts "Lets get adultish"
end