# used to be called in using require()
# or whatever I feel like :) - Jonathan Cameron

module Jonlib
	def self.numMultiply(num)
		47 * num
	end
end 

# used irb
# ran require './testlib.rb'
#=> true
# ran Jonlib.numMultiply(47)
#=> 2209