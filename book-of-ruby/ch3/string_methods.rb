# The Book of Ruby - http://www.sapphiresteel.com

# examples of a few string methods 

s = "Now is the winter of our discontent
Made glorious summer by this sun of York;
And all the clouds that     lour'd upon our house
In the deep bosom of the ocean buried."


puts( '--- s ---' )
puts(s)

puts( '--- s.length ---' )
puts(s.length)

puts( '--- s.reverse! ---' )	# notice final ! in method name: this changes s itself
puts(s.reverse!)

puts( '--- s.reverse ---' )		# creates new string object s
s = s.reverse
puts(s)

puts( '--- s.upcase ---' )
s = s.upcase
puts(s)

puts( '--- s.capitalize ---' )	# set initial char to upcase, rest to lowercase
s = s.capitalize
puts(s)

puts( '--- s.swapcase ---' )
s = s.swapcase
puts(s)

puts( '--- s.downcase ---' )
s = s.downcase
puts(s)

puts( '--- s.insert(7, "NOT " ) ---' ) # insert substring at index
s = s.insert(7, "NOT " )
puts(s)

puts( '--- s.squeeze ---' ) # remove repeating chars -e.g. "xx   yy" becomes "x y"
s = s.squeeze
puts(s)

puts( '--- s.split ---' )	# create an array of substrings
s = s.split
puts(s)