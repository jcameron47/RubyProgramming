# Global variables
# Jonathan Cameron

def basic_method
	puts $x 
end

$x = 10 
basic_method

x = 47
puts x

# change the value of the global variable
puts $x = 7

# the change of the global variable changed the value of
# the global variable in basic_method
basic_method
