# Summarizer program
# Jonathan Cameron

# save some text. %q is used well with multi-line strings
text = %q{
	Ruby is a great programming language. It is object oriented
	and has many groovy features. Some people don't like it, but that's
	not our problem! It's easy to learn. It's great. To learn more about 
	Ruby visit the official Ruby Web site today.	
}

# split the text into an array of sentences with . ? ! 
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)

# .sort_by allows arrays and hashes to be rearraged 
# sentences are organized by their length, shortest to longest
sentences_sorted = sentences.sort_by { |sentence| sentence.length}

# sorted sentences total length(total elements in the array) is divided by 3
one_third = sentences_sorted.length / 3
# puts one_third

# slice removes array elements 

ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
# puts ideal_sentences

ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/ }

puts ideal_sentences.join(". ")

