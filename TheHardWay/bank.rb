# used to store/give data

money = File.open("money.txt")

module Bank
	mon = money.read().to_i		# transfer money from the file to the variable

	def resetBankroll(x)
		puts "Resetting your funds... from $#{x}"
		puts "to $#{money.read()}"


