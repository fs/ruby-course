# The Book of Ruby - http://www.sapphiresteel.com
# parallel assignment


# assign multiple values to multiple variables
s1, s2, s3 = "Hickory", "Dickory", "Dock"
puts( s1 )
puts( s2 )
puts( s3 )
	
# simple variable assignment used to transpose values of 2 variables
i1 = 1
i2 = 2

i1, i2 = i2, i1

puts( "i1=#{i1}, i2=#{i2}" )


# assign values from an array to several variables
s1, s2, s3 = ["Ding", "Dong", "Bell"]
puts( s1 )
puts( s2 )
puts( s3 )


# return multiple values from a method...
def returnArray( a, b, c )
	a = "Hello, " + a
	b = "Hi, " + b
	c = "Good day, " + c
	return a, b, c
end

#...and assign those values to variables
x, y, z, extravar = returnArray( "Fred", "Bert", "Mary" )
puts( x )
puts( y )
puts( z )
puts( extravar ) # an 'extra' (unmatched) variables are assigned nil

# This shows that multiple values returned from a method are placed in an array
p( returnArray( "Fred", "Bert", "Mary" ) )

