# learning how to pass variables through strings, as well
# as calculations.

my_sex = "His"
my_name = 'Jonathan A. Cameron'
my_age = 31 #current age 
my_height = 72 # inches
my_weight = 210 
my_eyes = 'Hazel'
my_teeth = 'Yeller'
my_hair = 'Brown'

puts "Lets talk about %s." % [my_sex, my_name]
puts "%s %d inches tall." % [my_sex, my_height]
puts "%s %d pounds heavy." % [my_sex, my_weight]
puts "-------"
puts "%s got %s eyes and %s hair." % [my_sex,my_eyes,my_hair]
puts "%s teeth are usually %s depending on the coffee." % [my_sex,my_teeth]

# tricky test!
puts "If I add %d, %d, and %d I get %d." % [my_age,my_height,my_weight, my_age + my_height + my_weight]

