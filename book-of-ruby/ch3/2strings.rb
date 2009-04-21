# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	attr_accessor :name
	attr_accessor :number
	
	def initialize( aName, aNumber )
		@name	= aName
		@number = aNumber
	end
	
	def ten
		return 10
	end
	
end

ob = MyClass.new( "James Bond", "007" )
puts( %Q/Double-quoted: My name is #{ob.name} and my number is #{ob.number}/ )
puts( %/Here's a tab\ta new line\na calculation #{2*3} and a method-call #{ob.ten}/ )
puts( %q/Single-quoted: My name is #{ob.name} and my number is #{ob.number}/ )
    # Note: using %q for a single-quoted string, I don't need to 'escape' the quote
    # char using a backslash in the string %q/Here's/
puts( %q/Here's a tab\ta new line\na calculation #{2*3} and a method-call #{ob.ten}/ )