# comparable  pg 147
# Jonathan Cameron

# puts Comparable.public_methods

class Song
	include Comparable

	attr_accessor :length

	def <=>(other)
		@length <=> other.length
	end

	def initialize(song_name, length)
		@song_name = song_name
		@length = length
	end

end


a = Song.new('Rock arond the clock', 143)
b = Song.new('Bohemian Rhapsody', 544)
c = Song.new('Minute Waltz', 60)

puts a < b

puts b >= c

puts c > a

puts a.between?(c,b)



