# Jonathan Cameron
# Text Analyzer

# store method into variable
lines = File.readlines("test.txt")

# store number of lines within the text
line_count = lines.size

# store all the text into one string
text = lines.join

puts "#{line_count} lines"

# store total number of characters
total_characters = text.length
puts "#{total_characters} characters"

# store total number of characters with no whitespaces
total_character_nospaces = text.gsub(/\s+/, '').length
puts "#{total_character_nospaces} characters excluding spaces"

# store total number of words
word_count = text.split.length
puts "#{word_count} words"

# store total number of paragraphs
paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

# store total number of sentences
sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

# calculate and display average sentences/paragraph
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"

# calculate and display words/sentence
puts "#{word_count / sentence_count} words per sentence (average)"


