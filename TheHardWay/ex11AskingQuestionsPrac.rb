# using gets.chomp() - Jonathan Cameron
# gets returns a string with a \n
# chomp removes the \n from the gets

puts "Welcome to my input program"
print "Please enter a string: "
userInput = gets.chomp()

print "Now, enter an integer: "
userInt = gets.chomp()

print "Now, enter a floating number: "
userFloat = gets.chomp()

totalUserInput = userInput + " " + userInt + " " + userFloat

puts "You have entered: #{userInput}\n#{userInt}\n#{userFloat}"
puts "All added to one variable: #{totalUserInput}"
