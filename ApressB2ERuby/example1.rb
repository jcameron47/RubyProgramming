# bytes program numbers

x = 1

(1..20).each do |number|
  puts "#{x} bytes - #{x} * #{number}"
  x *= 2
end

puts "Ha-Do-Ken!!!"
