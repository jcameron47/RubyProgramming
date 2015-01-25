# Jonathan Cameron
# Text Analyzer V1.1


# store method into variable
lines = File.readlines(ARGV[0])

# store number of lines within the text
line_count = lines.size

# store all the text into one string
text = lines.join


# store total number of characters
total_characters = text.length


# store total number of characters with no whitespaces
total_character_nospaces = text.gsub(/\s+/, '').length


# store total number of words
word_count = text.split.length


# store total number of paragraphs
paragraph_count = text.split(/\n\n/).length


# store total number of sentences
sentence_count = text.split(/\.|\?|!/).length

# stopwords (words of no real importance)
stopwords = %w{the a by on for of are with just but and to the my I has some in}

# Summarize the text by cherry picking some choice sentences
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }

# display all of the stored items
puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_character_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count} sentences"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"

#end of program

