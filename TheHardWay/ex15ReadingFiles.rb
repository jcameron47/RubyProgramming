# Learning how to open a file and then read
# from the file
# First, obtain the filename from user
# close() closes the file and is important to
# do after you are done with them

# stores one argument, and stores it to filename
filename = ARGV.first

# create a prompt string to display
prompt = "> "

#open up file, store contents to variable txt
txt = File.open(filename)							

# Display the file name
puts "Here's your file: #{filename}"
# Display the file's txt
puts txt.read()

# Prompt to repeat last action
puts "I'll also ask you to type it again: "

# Display the prompt
print Prompt 

# Store the user's input into variable(file_again)
file_again = STDIN.gets.chomp()

# Store the file's contents into variable(txt_again)
txt_again = File.open(file_again)

# Display the file's contents view method .read()
puts txt_again.read()