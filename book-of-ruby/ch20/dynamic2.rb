# The Book of Ruby - http://www.sapphiresteel.com

class X
	def y
		puts( "ymethod" )
	end
end


print( "Enter a class name: ")
cname = gets().chomp
ob = Object.const_get(cname).new
p( ob )
print( "Enter a method to be called: " )
mname = gets().chomp
ob.method(mname).call
