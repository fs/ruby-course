# The Book of Ruby - http://www.sapphiresteel.com

a = "hello world"

def foo
	yield 100
end

puts( a )
foo{ |a| puts( a ) }

# so what is a now...?
puts( a )

