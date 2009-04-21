# The Book of Ruby - http://www.sapphiresteel.com

def aMethod( a=10, b=20, c=100, *d )
	return a, b, c, d
end

def anotherMethod( greeting="Hello", name="friend" )
	return "#{greeting}, #{name}"
end

p( aMethod )
p( aMethod( 1,2 ) )
p( aMethod( 1,2,3 ) )
p( aMethod( 1,2,3,4,6 ) )
p( anotherMethod )
p( anotherMethod( "Goodye" ) )
p( anotherMethod( "Toodlepip!","Bertie" ) )

