# - Practicing with arrays and loops
# - Jonathan Cameron

toys = ['Elmo', 'train', 'car', 'teddy bear']

puts toys.length
puts toys.first
puts toys.last




for i in (0..toys.length - 1)
	puts "#{i + 1}. - #{toys[i]}"
end

puts "Make a selection:"
print "?> "; choice = gets.chomp.to_i - 1
puts "You have choose: #{toys[choice]}"

