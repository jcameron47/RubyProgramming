# This file push/pulls data from an external text file
# that will allow access to user_name, user_password,
# user_balance

# - Jonathan Cameron

# account file experimentation
file = File.open('account.txt')

puts file.readline()
puts file.readline()
