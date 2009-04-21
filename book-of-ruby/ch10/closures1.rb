# The Book of Ruby - http://www.sapphiresteel.com

def aFunc( aClosure )
  @hello = "hello world"
  puts("inside the aFunc function")
  aClosure.call
end

# This block refers to an instance variable, @hello, to which, however
# no value is assigned within the block itself
aClos = lambda{ 
	@hello << " yikes!"
	puts("in #{self} object of class #{self.class}, @hello = #{@hello}")
	}

# aClos.call #<= This would cause an error as @hello is unknown (nil)

# I send the block to function, aFunc, which contains an @hello
# variable to which a string is assigned.
aFunc(aClos)

# On returning from aFunc, the block (or 'closure') can access 
# the value of @hello which was created in aFunc and which is
# now accessible throughout the scope of the main object.
puts("outside the aFunc function")
aClos.call
aClos.call
aClos.call
aClos.call


class X
	def y( b )
		@hello = "I say, I say, I say!!!"
		puts( "   [In X.y]" )
		puts("in #{self} object of class #{self.class}, @hello = #{@hello}")
		puts( "   [In X.y] when block is called..." )
		b.call		# <=== watch the value of the var @hello!
	end
end

puts( "======== x.y( aClos )" )
x = X.new
x.y( aClos )
puts( "======== self.inspect" )
puts self.inspect
puts( "======== x.inspect" )
puts x.inspect