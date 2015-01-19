# This file push/pulls data from an external text file
# that will allow access to user_name, user_password,
# user_balance

# - Jonathan Cameron

# account file experimentation
file = File.open("Account.txt")

puts "Please enter your user account:"
print "?> "
user_account = gets.chomp()

if File.readlines("Account.txt").grep(user_account)
	#position in front of the password to check it
	puts "This worked!"
end

# puts file.readline()
# puts file.readline()



# puts "Writing 'stuff added' to end of file(hopefully)"
# indata = "stuff added"
# output = File.open("Account.txt", 'a') do |f|
# 	f.puts indata
# end

# print file.read()




