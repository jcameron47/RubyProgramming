# Enumberable practice pg 144
# Jonathan Cameron

puts z = [1,2,3,4].collect { |x| x.to_s + "x" }

puts [1,2,3,4].detect do |x| x.between?(2,3) end

puts [1,2,3,4].select do |x| x.between?(2,3) end

puts [4,1,3,2].sort

puts [1,2,3,4].max

puts [1,2,3,4].min

puts z

class AllVowels
	include Enumerable

	@@vowels = %w{a e i o u}
	def each
		@@vowels.each do |v|
			yield v
		end
	end
end

x = AllVowels.new
x.each do |v|
	puts v
end

puts x.collect {|x| x + "x"}
puts x.detect {|x| x > "j"}
puts x.select {|x| x > "j"}
puts x.sort
puts x.max
puts x.min
