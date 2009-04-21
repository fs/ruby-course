# The Book of Ruby - http://www.sapphiresteel.com

TESTSTR = "abc is not cba"

puts( "\n--match--" )
b = /[abc]/.match( TESTSTR )
puts( b )
p( b ) # this is a Matchdata object

puts( "--scan--" )
a = TESTSTR.scan(/[abc]/)
p( a ) # this is an array

a = TESTSTR.scan(/[abc]/){|c| print( c.upcase ) }