# Test script

text = %q{Los Angeles has some of the nicest weather in the country... cough, cough}
stopwords = %w{the a by on for of are with just but and to the my in I has some}

words = text.scan(/\w+/)
# ! negates the expression, selecting what is "not" there
keywords = words.select {|word| !stopwords.include?(word)}

puts keywords.join(' ')

# percent of non-stop keywords to all words
puts ((keywords.length.to_f / words.length.to_f) * 100).to_i