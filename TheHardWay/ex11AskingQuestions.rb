# using gets.chomp() - Jonathan Cameron
# gets returns a string with a \n
# chomp removes the \n from the gets

print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp()
print "How much do you weigh? "
weight = gets.chomp()

puts "So, you're #{age} years old, #{height} tall and #{weight}lbs."
