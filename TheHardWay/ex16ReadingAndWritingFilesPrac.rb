# Practing with Reading and Writing Files
# - Jonathan Cameron

filename = ARGV.first
script = $0

prompt = "?> "

txt = File.open(filename)

puts "Script name: #{script}"
puts "File contents: #{txt.read()}"

puts "Please add a line to the file: "
txt = File.open(filename,'w')
print prompt
lineAdd = STDIN.gets.chomp()
txt.write(lineAdd)

txt = File.open(filename)
puts "Stored: #{txt.read()}"
puts "Now closing file..."

txt.close()

puts "File closed... goodbye!"
puts "Script End"
