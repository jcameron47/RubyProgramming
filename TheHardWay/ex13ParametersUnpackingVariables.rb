# when typing:
# $ruby ex10.rb - the ex10.rb is a script
# time to write a script that also accepts
# arguments - ARGV
# ARGV - takes the arguments, splits them into as
# many variables as you want, and will allow you
# use them in your current script. Pretty convenent(sp)


first, second, third = ARGV

puts "The script is called: #{$0}"
print "Enter your name: "
name = STDIN.gets.chomp()

puts "Hello #{name}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"