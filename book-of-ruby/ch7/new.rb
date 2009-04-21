# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	def initialize( aStr )
		@avar = aStr
	end
	
	def MyClass.new( aStr ) # returns a string object!
		 super
		 @anewvar = aStr.swapcase		
	end
end

ob = MyClass.new( "hello world" )
puts( ob )
puts( ob.class )

