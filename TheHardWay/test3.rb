class Test
	@var = "test attribute"

	def self.initialize(x)
		@secret = x
		puts "class initialized"
	end

	def self.print()
		puts @var
	end
end

print "Please enter your name: "
user_input = gets.chomp.upcase!

puts "Your name:  %s" % user_input

puts user_input

array = [1,4,7,47,747,447,"Jon","loves","getting","laid"]

array.each do |element|
	if element != array.last
		print element.to_s + " "
	else
		print element.to_s + "."
	end	
end

puts # blank line

multiDimArray = [[0,1,2,3],[4,5,6,7],[8,9,10,11]]
total = 3
counter = 0

multiDimArray.each do |num|
	puts '-' + num.to_s + '-'
end

x = []

y = Test.new()

for w in (0..20)
	x.push(y)
end

counter = 0
x.each do |data|
	print counter.to_s + " "
	counter += 1
end


# x.each do |data|
# 	x.print()
# end

# TestSpawn::Test		# TestSpawn inherits Test class

# z = TestSpawn.new()

# z.print()
# end


