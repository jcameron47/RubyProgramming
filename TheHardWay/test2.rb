# - time to disect the code from ex41

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

# I am creating a control situation to break down 
# what this code is doing

randomWords = WORDS.sort_by {rand}
st = ["This is a normal (@@@) sentence that I am making up",
			"This is my second (@@@) sentence"
			]
pn = '/@@@/'

# see what this function can do
def craft_names(rand_words, snippet, pattern, caps=false)
	names = snippet.scan(pattern).map do 
		word = rand_words.pop() # random word pulled
		caps ? word.capitalize : word 	# if caps == true, then word.capitalize, otherwise word - caps words
	end

	return names * 2
end



puts cr = craft_names(randomWords,st,pn)


