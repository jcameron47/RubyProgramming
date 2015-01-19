# Exercise 41 - A Reading Test
# I have to say, these lessons are getting
# interesting. I'm finally starting to
# get into the juicy stuff.


require 'open-uri'		# allows use of open-uri - ?

WORD_URL = "http://learncodethehardway.org/words.txt"			#external site file(words.txt)
WORDS = []				# This stores the words pulled in from the website

# Stored phrases in an array, to be called up later
PHRASES = {
	"class ### < ###\nend" => "Make a class named ### that is- a ###.",
	"class ###\n\tdef initialize(@@@)\n\tend\nend" => "class ### has-a initialize that takes @@@ parameters.",
	"class ###\n\tdef ***(@@@)\n\tend\nend" => "class ### har-a function named *** that takes @@@ parameters.",
	"*** = ###.new()" => "Set *** to an instance of class ###.",
	"***.***(@@@)" => "From *** get the *** function, and call it with parameters @@@.",
	"***.*** = '***'" => "From *** get the *** attribute and set it to '***'."
}

# pulls in the phrase english from the user passing an argument with running this script
PHRASE_FIRST = ARGV[0] == "english"	

# opens the website file
open(WORD_URL) {|f|		# pass data through variable f
	f.each_line {|word| WORDS.push(word.chomp)}			# each line passed through, push the word(|word|) to array WORDS
}

puts WORDS

def craft_names(rand_words, snippet, pattern, caps=false)
	names = snippet.scan(pattern).map do 
		word = rand_words.pop() # random word pulled
		caps ? word.capitalize : word 	# if caps == true, then word.capitalize, otherwise word - caps words
	end

	return names * 2
end

def craft_params(rand_words, snippet, pattern)
	names = (0...snippet.scan(pattern).length).map do
		param_count = rand(3) + 1
		params = (0...param_count).map {|x| rand_words.pop()}
		params.join(', ')
	end

	return names * 2
end

def convert(snippet, phrase)
	rand_words = WORDS.sort_by {rand}
	class_names = craft_names(rand_words, snippet, /###/, caps=true)
	other_names = craft_names(rand_words, snippet, /\*\*\*/)
	param_names = craft_params(rand_words, snippet, /@@@/)

	results = []

	for sentence in [snippet, phrase]
		# fake class names, also copies sentence
		result = sentence.gsub(/###/) {|x| other_names.pop}		# get substitution

		# fake other names
		result.gsub!(/\*\*\*/) {|x| other_names.pop}

		# fake parameter lists
		result.gsub!(/@@@/) {|x| param_names.pop}

		results.push(result)
	end

	return results
end

# keep going until they hit CTRL-D
loop do
	snippets = PHRASES.keys().sort_by {rand}

	for snippet in snippets
		phrase = PHRASES[snippet]
		question, answer = convert(snippet, phrase)

		if PHRASE_FIRST
			question, answer = answer, question
		end

		print question, "\n\n> "

		exit(0) unless STDIN.gets

		puts "\nANSWER:  %s\n\n" % answer
	end
end