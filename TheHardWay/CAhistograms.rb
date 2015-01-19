# Codecademy - histograms
# with added code for testing and learning
# - Jonathan Cameron

def divider
	x = '='
	puts x * 20
end

def prompt
	print "?> "
end


puts "Text please: "
prompt

test = gets.chomp.upcase

words = test.split(" ")

# words.each do |x| 
# 	puts x + " "
# end

frequencies = Hash.new(0) # 0 is default value

# So, this kind of baffles me. When you run this array iteration
# each individual word is stored into frequencies array, with a 
# hash to a number. This code also detects if the string has been
# stored, and will add a integer. Otherwise, create a new space
# for the hash name, and add the designated integer.
words.each {|word| frequencies[word] += 1}

# This shows how Hash objects work - awesome for word tracking
frequencies.each do |x|
	print x
end

puts # blank line
divider

frequencies = frequencies.sort_by {|name,count| count}

# lets see what just happened above
frequencies.each do |x|
	print x
end

divider

frequencies.reverse!

frequencies.each do |x|
	print x
end




