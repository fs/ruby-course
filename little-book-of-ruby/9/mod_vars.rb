# Ruby Sample program from www.sapphiresteel.com 

# local variables declared inside a module are not
# accessible outside the module - even when the module
# is mixed in.

x = 1				# local to this program

module Foo
	x = 50			# local to module Foo
	
	# This can be mixed in but the variable x won't then be visible 
	def no_bar
	  return x 
	end
	
	def bar
	@x = 1000		# You can mix in methods with instance variables, however!
		return  @x
	end
	puts( "In Foo: x = #{x}" )   # this can access its local x
end

include Foo

 puts(x)
# puts( no_bar )	# This can't access the module-local variable x needed by
					# the no_bar method
 puts(bar)
