# The Book of Ruby - http://www.sapphiresteel.com

class X
	private
	def priv( aStr )
		puts("I'm private, " << aStr)
	end         
end

ob = X.new
# ob.priv( "hello" )		# This fails
ob.send( :priv, "hello" )	# This succeeds