# The Book of Ruby - http://www.sapphiresteel.com

# s1 includes a carriage return\linefeed
s1 = "Hello world
"
s2 = "Hello world"

puts( "s1='#{s1}'")

# chops off cr\linefeed from s1
puts( '#{s1.chop}' )
puts( "'#{s1.chop}'" )

# this chomps off cr\linefeed from s1
puts( '#{s1.chomp}' )
puts( "'#{s1.chomp}'" )


puts( "\ns2 ='#{s2}'" )

# s2 has no cr\linefeed - chop chops off the last char anyway!
puts( '#{s2.chop}' )
puts( "'#{s2.chop}'" )

# but chomp returns the string unaltered
puts( '#{s2.chomp}' )
puts( "'#{s2.chomp}'" )

# this specifies a different separator 'rld' and chomps at that substring
puts( '#{s2.chomp(\'rld\')}' )
puts( "'#{s2.chomp('rld')}'" )

puts( "\nEnter some text..." )
print( "> " )
s = gets()
puts( "You entered:" )
puts( "'#{s}'" )
puts( "Now let's chomp it:" )
puts( "'#{s.chomp}'" )	# removes cr\linefeed

$/="world"				# redefine record separator
puts( "\$/ is now #{$/}, so let's chomp #{s2}" )
puts( "'#{s2.chomp}'")

puts( "\$/ is also used by gets()" )
puts( "Try entering the following string: ")
puts ( "Hello world, Goodbye" )
print( "> " )
s = gets()
puts( "You entered:" )
puts( "'#{s}'" )
