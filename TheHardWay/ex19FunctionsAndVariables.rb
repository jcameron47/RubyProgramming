# learning about scope resolution stuff
# - Jonathan Cameron
# the variables in functions do not
# leave the function. Only the return(maybe?)

def cheese_and_crackers(chesses_count, boxes_of_crackers)
	puts "You have #{chesses_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket"
	puts # a blank line
end

def total_cheesecracker(chesses_count, boxes_of_crackers)
	cracker_per_cheeseNum = 5    # num of cracker per cheese
	answer = boxes_of_crackers / cracker_per_cheeseNum
	print "The amount of cheese per box of crackers: #{answer}"
end

puts "We can just give the function numbers directly: "
cheese_and_crackers(20,30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math: "
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# total amount of cheese crackers
total_cheesecracker(amount_of_cheese, amount_of_crackers)


# program: success