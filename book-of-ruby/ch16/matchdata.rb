# The Book of Ruby - http://www.sapphiresteel.com

x = /(^.*)(#)(.*)/.match( 'def myMethod # This is a very nice method' )

puts( '---x.captures---' )
p( x.captures )
x.captures.each{ |item| puts( item ) }

puts( "\n---x.to_a---" )
p( x.to_a )
x.to_a.each{ |item| puts( item ) }
