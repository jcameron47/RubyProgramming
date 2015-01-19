# using ARGV and gets.chomp() together to ask 
# the user something specific - Jonathan Cameron

user, age = ARGV.first			#first argument passed through
prompt = '> '					# changes the prompt

puts "Hi #{user}, I'm the #{$0} script."	#displays filename
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<-MESSAGE
Alright #{user}, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
You are also #{age} years old.
MESSAGE

puts "Script end"