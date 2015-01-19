# Text analyzer  - Jonathan Cameron
# 
# Program function:

# Character count
# Character count (excluding spaces)
# Word count
# Sentence count
# Paragraph count
# Average number of words per Sentence
# Average number of sentences per Paragraph

# stop words list
stopwords = %w{the a by on for of are with just but and to the my I has some in}

text = ''
line_count = 0  # counts the number of lines

# alternate method to obtain txt from the file
# technique - 1
# lines = File.readlines("text.txt")
lines = File.readlines(ARGV[0])			#ARGV practice, allows parameter to be passed when opening a script
line_count = lines.size # can count the lines with size...
text = lines.join #store all the lines to text

# \s+ gets all whitespaces, pg 47
total_characters_nospaces = text.gsub(/\s+/,'').length #return all text char length without whitespaces

# store total characters
total_characters = text.length

# count words
word_count = text.split.length # counts the words, split detects whitespaces

# sentence count
sentence_count = text.split(/\.|\?|!/).length

# paragraph count
paragraph_count = text.split(/\n\n/).length

# Make a list of words in the text that aren't stop words
# count them, and wok out the percentage of non-stop words
# against all words
all_words = text.scan(/\w+/)
good_words = all_words.select {|word| !stopwords.include?(word)}
good_percentage = ((good_words.length.to_f / all_words.length.to_f)* 100).to_i

# Summarize the text by cheery picking some choice sentences
sentences = text.gsub(/\s+/,' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third +1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/ }


# technique - 2
# opens the file and goes through each line
# File.open("text.txt").each do |line| 
# 	line_count += 1
# 	text << line
# end



puts "#{line_count} lines"							# Total lines
puts "#{total_characters} characters"		# Total characters
puts "#{total_characters_nospaces} characters w/o whitespace" # Total characters without whitespace
puts "#{word_count} words"							# Total words
puts "#{sentence_count} sentences"			# Total sentences
puts "#{paragraph_count} paragraphs"		# Total paragraphs

# average number of words per sentence
# average number of sentences per paragraph
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"

puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"


