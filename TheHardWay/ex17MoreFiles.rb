# Working with Files I/O - Jonathan Cameron

# # store filename to variable
# externalFile = "testlib"

# Learn to use require()
# require 'testlib'

# enter the file being opened
from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
input = File.open(from_file); indata = input.read()

# Prompt how much data the first file contains (.length)
puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
print prompt  # pulled in from require(experiment)
STDIN.gets		# Hit key

# open second file, 'w' allows write permission
output = File.open(to_file, 'w')
# copy first file's contents to second file
output.write(indata)	

puts "Alright, all done."

# close files out
output.close()
input.close()

# This program works - Jonathan Cameron