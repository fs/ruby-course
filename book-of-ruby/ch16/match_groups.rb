# The Book of Ruby - http://www.sapphiresteel.com

puts( /(.)(.)(.)/.match("abc")[2] )		#=> "b"

/(^.*)(#)(.*)/.match( 'def myMethod # This is a very nice method' )
puts( "\n--- $~[0], $~[1], $~[3] ---" )
puts( $~[0], $~[1], $~[3] )
# puts( $~.sort ) # doesn't work!

puts( "\n--- $~.to_a.sort ---" )
puts( $~.captures.sort )
