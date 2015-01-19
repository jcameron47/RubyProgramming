# Working with functions and files
# - Jonathan Cameron

input_file = ARGV[0]  # like ARGV.first?

def print_all(f)
	puts f.read()
end

# # This rewinds the function to the beginning of the file
# def rewind(f, *args)
# 	if args.length == 1
# 		f.seek(0, IO::SEEK_SET)		# To position zero in stream
# 	else
# 		arg1, arg2 = args
# 		f.seek(arg1, IO::SEEK_SET)	# goes to desired position
# 	end
# end

def rewind(f)
		f.seek(0, IO::SEEK_SET)		# To position zero in stream
end

# function overload - allows manual positioning
def rewindPos(position, f)
	f.seek(position.to_i, IO::SEEK_SET)
end

def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end


# pass the file the user wants to use to current_file
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines: "

current_line = 1
print_a_line(current_line, current_file)

# increment by 1
current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

# accept user input to choose what position in the file
# to start at
puts "Please enter a position in the file:"
print "?> "
userPos = STDIN.gets.chomp()
rewindPos(userPos, current_file)

# reads the line that the position has moved to
puts "#{current_file.readline()}"

# program: Success!