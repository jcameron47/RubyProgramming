# learning the power of hashes
# - Jonathan Cameron

profile = {'name' => "Default", 'age' => 0, 'height' => 42}

puts "Here is the readings of profile array"

profile.each do |x,y|
	puts x, y
end

counter = 1
for x in profile
	puts "#{counter}. - #{x}"
	counter += 1
end

puts "Make a number selection"
print "?> "; choice = STDIN.gets.chomp

puts "profile[#{choice}] = #{profile[choice]}"

