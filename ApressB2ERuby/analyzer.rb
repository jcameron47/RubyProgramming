# Text analyzer 
# 
# Program function:

# Character count
# Character count (excluding spaces)
# Word count
# Sentence count
# Paragraph count
# Average number of words per Sentence
# Average number of sentences per Paragraph

# allows use of open-uri
require 'open-uri'

# store the external website url
WORD_URL = "http://www.rubyinside.com/book/oliver.txt"
# create an empty array
z = []

# lets load this sucka up! Store the content from the website
# open website, data x passes through, each data passed through is pushed into WORD array
# open(WORD_URL) {|x|
# 	x.each_line {|word| z.push(word.chomp)}
# }

open(WORD_URL) {|x|
	z.push(x)
}

puts z

x = z.split(" ")

puts "Words = #{x.length}"
