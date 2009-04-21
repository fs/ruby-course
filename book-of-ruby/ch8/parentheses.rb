# The Book of Ruby - http://www.sapphiresteel.com
# parentheses avoid ambiguity...

greet = "Hello"
name = "Fred"

def greet
	return "Good morning"
end

def name
	return "Mary"
end

def sayHi( aName )
	return "Hi, #{aName}"
end

puts( greet )
puts greet 
puts( sayHi( name ) )
puts( sayHi( name() ) )
