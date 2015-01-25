# Jonathan Cameron
# Teline_countt Analyzer V1

text = %q{Los Angeles has some of the dookiest weather in the country.}
stopwords = %w{the a by on for of are with just but and to the my in I has some}

words = text.scan(/\w+/)
keywords = words.select {|word| !stopwords.include?(word)}

puts keywords.join(' ')
puts text.scan(/\w+/).length
print "Keyword/Word - "
print ((keywords.length.to_f / words.length.to_f) * 100).to_i
print "%\n"

