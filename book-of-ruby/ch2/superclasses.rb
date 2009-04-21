# The Book of Ruby - http://www.sapphiresteel.com

class One
end

class Two < One
end

class Three < Two
end

# Create ob as instance of class Three
# and display the class name
ob = Three.new
x = ob.class
puts( x )

# now climb back through the hierarchy to
# display all ancestor classes of ob
begin
	x = x.superclass
	puts(x) 
end until x == nil 