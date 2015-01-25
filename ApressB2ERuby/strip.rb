# strip

x = %q{This is a test sentence. I am using these sentences
  to put in whatever I want. Some things will be switched out.
  Maybe not. But, long story short, this paragraph is done!
  }
  
  split_up = x.strip.split(/\!|\.|\?/)
  
  puts split_up
